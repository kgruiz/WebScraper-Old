import json
import os
from typing import List
from urllib.parse import urlparse

import requests
from bs4 import BeautifulSoup
from tqdm import tqdm


def TransformNestedDictionary(nestedDict: dict) -> dict:

    def Recurse(currentDict, parentKey=None):

        keysToRemove = []
        keyList = []

        for key, value in currentDict.items():

            if isinstance(value, dict):

                if not value:

                    keyList.append(key)
                    keysToRemove.append(key)

                else:

                    Recurse(value, parentKey=key)

        for key in keysToRemove:

            del currentDict[key]

        if (
            keyList
            and parentKey
            and isinstance(currentDict.get(parentKey), list) is False
        ):

            currentDict[parentKey] = keyList

    Recurse(nestedDict)

    return nestedDict


def OutputJson(urlList: list, fileName: str):

    if isinstance(urlList, list):

        urlDict = {"all": urlList}

    else:

        urlDict = urlList

    with open(fileName, "w") as file:

        json.dump(urlDict, file, indent=2)


def GetUrls(
    url: str,
    bar: tqdm,
    addedUrls: set = set(),
    urlList: list = None,
    baseUrl: str = None,
    verbose: bool = False,
    parentLink=None,
    writeHtml: bool = True,  # New parameter to control HTML file writing
):

    if urlList is None:
        urlList = []

    if baseUrl is None:
        baseUrl = url

    response = requests.get(url)
    soup = BeautifulSoup(response.text, "html.parser")
    links = soup.find_all("a", href=True)

    if writeHtml:
        # Create directory structure based on URL
        parsedUrl = urlparse(url)
        pathParts = parsedUrl.path.strip("/").split("/")
        dirPath = os.path.join("Raw HTML Files", parsedUrl.netloc, *pathParts[:-1])
        if not os.path.exists(dirPath):
            os.makedirs(dirPath)

        # Save the HTML content to a file
        filename = os.path.join(dirPath, f"{pathParts[-1] or 'index'}.html")
        with open(filename, "w") as file:
            file.write(BeautifulSoup.prettify(soup))
            file.write("\n<!-- All hrefs on this page -->\n")
            for link in links:
                file.write(f"<!-- {link.get('href')} -->\n")

    if response.status_code == 404:

        response = requests.get(parentLink)
        soup = BeautifulSoup(response.text, "html.parser")

        with open("output.html", "w") as file:

            file.write(BeautifulSoup.prettify(soup))
            file.write("\n")

            links = soup.find_all("a", href=True)

            for link in links:

                file.write(f"<!-- {link.get('href')} -->\n")

        raise Exception(f"404 Error on {url}. Parent link: {parentLink}")

    uniqueLinksLengthTest = []

    for link in links:

        link = link.get("href")

        if "docs" not in link:

            continue

        if "changelog" in link:

            continue

        if link.startswith("#"):

            continue

        if "#" in link:

            link = link.split("#")[0]

        if "blog" in link or "universe" in link:

            continue

        if "https" not in link:

            if f"{baseUrl}{link[1:]}" not in addedUrls:
                link = f"{baseUrl}{link[1:]}"

        uniqueLinksLengthTest.append(link)

    uniqueLinksLengthTest = set(uniqueLinksLengthTest)
    uniqueLinks = set(uniqueLinksLengthTest) - addedUrls

    for link in uniqueLinks:

        if "universe" in link:

            continue

        if link.startswith(baseUrl) and link not in addedUrls:

            addedUrls.add(link)

            total = bar.total + 1
            bar.total = total
            bar.refresh()

            bar.set_description(f"Added {link}")
            urlList.append(link)
            GetUrls(
                url=link,
                bar=bar,
                addedUrls=addedUrls,
                urlList=urlList,
                baseUrl=baseUrl,
                verbose=verbose,
                parentLink=url,
                writeHtml=writeHtml,  # Pass the parameter to recursive calls
            )

    return urlList


def MakeStructure(urlList: List[str]) -> dict:

    urlStructure = {}

    for url in urlList:

        parsedUrl = urlparse(url)

        netloc = parsedUrl.netloc
        pathParts = parsedUrl.path.strip("/").split("/")

        if netloc not in urlStructure:

            urlStructure[netloc] = {}

        currentLevel = urlStructure[netloc]

        for part in pathParts:

            if part not in currentLevel:

                currentLevel[part] = {}

            currentLevel = currentLevel[part]

    urlStructure = TransformNestedDictionary(nestedDict=urlStructure)

    return urlStructure


if __name__ == r"__main__":

    # Example usage
    startUrl = r"https://typst.app/"
    outputJsonFile = r"urlStructure.json"

    bar = tqdm(total=0, bar_format="{desc} {bar} Total: {total_fmt} [{elapsed}]")

    urlList = GetUrls(startUrl, bar=bar)

    OutputJson(urlList=urlList, fileName=f"urlList.json")

    fileName = "urlStructure.json"

    urlStructure = MakeStructure(urlList)

    OutputJson(urlList=urlStructure, fileName=fileName)

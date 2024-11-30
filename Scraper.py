import json
import os
from typing import List
from urllib.parse import urljoin, urlparse, urlunparse

import requests
from bs4 import BeautifulSoup
from tqdm import tqdm

from DirStructure import DirStructureFromURLList, OutputJsonWalk


def OutputJson(urlList: list, fileName: str):

    with open(fileName, "w") as file:

        json.dump(urlList, file, indent=2)


def ResolveRelativePathWithoutFragment(currentUrl: str, relativePath: str):

    resolvedPath = urljoin(currentUrl, relativePath)

    parsedUrl = urlparse(resolvedPath)

    urlWithoutFragment = urlunparse(parsedUrl._replace(fragment=""))

    return urlWithoutFragment


def GetUrls(
    url: str,
    bar: tqdm,
    addedUrls: set = set(),
    urlList: list = None,
    baseUrl: str = None,
    verbose: bool = False,
    parentLink=None,
    writeHtml: bool = True,  # New parameter to control HTML file writing
    includeWords: List[str] = None,  # New parameter for words to include
    excludeWords: List[str] = None,  # New parameter for words to exclude
    maxPage: str = None,
    htmlDirName: str = "Raw HTML Files",  # Added parameter
):

    if urlList is None:
        urlList = []

    if baseUrl is None:
        baseUrl = url

    if includeWords is None:
        includeWords = []

    if excludeWords is None:
        excludeWords = []

    response = requests.get(url)
    soup = BeautifulSoup(response.text, "html.parser")
    links = soup.find_all("a", href=True)

    if writeHtml:
        # Create directory structure based on URL
        parsedUrl = urlparse(url)
        pathParts = parsedUrl.path.strip("/").split("/")
        dirPath = os.path.join(htmlDirName, parsedUrl.netloc, *pathParts[:-1])

        if not os.path.exists(dirPath):

            os.makedirs(dirPath)

        # Save the HTML content to a file
        filename = os.path.join(
            dirPath,
            f"{pathParts[-1] if pathParts[-1].endswith('.html') else pathParts[-1] + '.html'}",
        )
        with open(filename, "w") as file:
            file.write(BeautifulSoup.prettify(soup))
            file.write("\n<!-- All hrefs on this page -->\n")
            for link in links:
                file.write(f"<!-- {link.get('href')} -->\n")

    if response.status_code == 404:

        response = requests.get(parentLink)
        soup = BeautifulSoup(response.text, "html.parser")

        with open("parentOfError.html", "w") as file:

            file.write(
                f"<!-- {(f"404 Error on {url}. Parent link: {parentLink}")} -->\n\n"
            )

            file.write(BeautifulSoup.prettify(soup))
            file.write("\n")

            links = soup.find_all("a", href=True)

            for link in links:

                file.write(f"<!-- {link.get('href')} -->\n")

            raise Exception(f"404 Error on {url}. Parent link: {parentLink}")

    if maxPage is not None and f"/{maxPage}/" in url:

        urlParts = url.split("/")

        while "" in urlParts:

            urlParts.remove("")

        if maxPage not in urlParts[-3:-1]:

            links = []

        else:

            if maxPage == urlParts[-2]:

                newLinks = []

                for link in links:

                    if all(char.isdigit() or char == "." for char in link.get("href")):

                        newLinks.append(link)

                links = newLinks

            if maxPage == urlParts[-3]:

                if not all(char.isdigit() or char == "." for char in urlParts[-1]):

                    links = []

    uniqueLinksLengthTest = []

    for link in links:

        link = link.get("href")

        link = ResolveRelativePathWithoutFragment(currentUrl=url, relativePath=link)

        if any(word in link for word in excludeWords):
            continue

        if includeWords and not any(word in link for word in includeWords):
            continue

        uniqueLinksLengthTest.append(link)

    uniqueLinksLengthTest = set(uniqueLinksLengthTest)
    uniqueLinks = set(uniqueLinksLengthTest) - addedUrls

    for link in uniqueLinks:

        if link.startswith(baseUrl) and link not in addedUrls:

            addedUrls.add(link)

            total = bar.total + 1
            bar.total = total
            bar.refresh()

            bar.set_description(rf"Added {link}")
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
                includeWords=includeWords,  # Pass the parameter to recursive calls
                excludeWords=excludeWords,  # Pass the parameter to recursive calls
                maxPage=maxPage,
                htmlDirName=htmlDirName,  # Pass the parameter to recursive calls
            )

    return urlList

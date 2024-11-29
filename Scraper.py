import json

import requests
from bs4 import BeautifulSoup


def GetUrls(url, rootUrl, verbose=False):
    try:
        response = requests.get(url)

        soup = BeautifulSoup(response.text, "html.parser")
        with open("parsed_html.html", "w") as parsedFile:
            parsedFile.write(soup.prettify())

        raise SystemExit

        urls = set()
        for link in soup.find_all("a", href=True):
            href = link["href"]
            if href.startswith(rootUrl):
                urls.add(href)
        return urls
    except requests.RequestException as e:
        if verbose:
            print(f"Error fetching {url}: {e}")
        return set()


def BuildUrlStructure(url, rootUrl, visited, verbose=False):
    if url in visited:
        return None
    visited.add(url)
    structure = {"url": url, "children": []}
    childUrls = GetUrls(url, rootUrl, verbose)
    for childUrl in childUrls:
        childStructure = BuildUrlStructure(childUrl, rootUrl, visited, verbose)
        if childStructure:
            structure["children"].append(childStructure)
    return structure


def PrintUrlStructure(startUrl, verbose=False, bar=False, outputFile=None):
    visited = set()
    urlStructure = BuildUrlStructure(startUrl, startUrl, visited, verbose)

    if outputFile:
        with open(outputFile, "w") as f:
            json.dump(urlStructure, f, indent=4)

    if verbose:
        print(json.dumps(urlStructure, indent=4))


if __name__ == r"__main__":

    # Example usage
    startUrl = r"https://typst.app/"
    outputJsonFile = r"urlStructure.json"

    PrintUrlStructure(
        startUrl, verbose=True, bar=True, outputFile=outputJsonFile
    )  # Pass outputFile parameter

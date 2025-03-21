import json
import os
from urllib.parse import urljoin, urlparse

import pdfkit
import requests
from bs4 import BeautifulSoup
from tqdm import tqdm


def SavePageAsPdf(url, outputDir):
    """
    Save a web page as a PDF file.

    Parameters
    ----------
    url : str
        The URL of the web page to save.
    outputDir : str
        The directory where the PDF will be saved.
    """
    # Ensure the output directory exists
    os.makedirs(outputDir, exist_ok=True)

    # Clean URL to create a valid filename
    parsedUrl = urlparse(url)
    fileName = parsedUrl.path.strip("/").replace("/", "_") or "index"
    fileName += ".pdf"

    outputPath = os.path.join(outputDir, fileName)

    # Fetch the page content
    response = requests.get(url)
    if response.status_code != 200:
        raise Exception(f"Failed to fetch {url}")

    # Parse the page content
    soup = BeautifulSoup(response.text, "html.parser")

    with open("out1.html", "w") as file:
        file.write(BeautifulSoup.prettify(soup))

    # Remove "meta" elements with content attribute
    for meta in soup.find_all("meta", content=True):
        meta.decompose()

    # Remove "button" elements
    for tag in soup.find_all("button"):
        tag.decompose()

    with open("out2.html", "w") as file:
        file.write(BeautifulSoup.prettify(soup))

    # Save as PDF using pdfkit
    pdfkit.from_string(str(soup), outputPath)


def LoadUrlsFromJson(jsonFilePath):
    """
    Load URLs from a JSON file.

    Parameters
    ----------
    jsonFilePath : str
        The file path to the JSON file containing URLs.

    Returns
    -------
    list
        A list of URLs.
    """
    with open(jsonFilePath, "r") as file:
        data = json.load(file)
        urls = data.get("all", [])

    return urls


SavePageAsPdf(
    url=r"https://leetcode.com/discuss/study-guide/458695/dynamic-programming-patterns",
    outputDir="./Output",
)

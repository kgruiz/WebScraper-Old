import argparse
import os
import time

from tqdm import tqdm

from DirStructure import DirStructureFromURLList, OutputJsonWalk
from Downloader import LoadUrlsFromJson, SavePageAsPdf
from HTMLtoLatex import CombineDirs, FlattenDir, HtmlDirToLatex
from Scraper import GetUrls, OutputJson


def main():

    parser = argparse.ArgumentParser(description="Web Scraper Tool")
    parser.add_argument(
        "baseUrl", type=str, nargs="?", help="The base URL to start scraping from"
    )
    parser.add_argument(
        "--outputJson",
        type=str,
        default="urlList.json",
        help="Output JSON file for URLs",
    )
    parser.add_argument(
        "--htmlDir",
        type=str,
        default="Raw HTML Files",
        help="Directory to save raw HTML files",
    )
    parser.add_argument(
        "--latexDir",
        type=str,
        default="Latex Pages",
        help="Directory to save LaTeX files",
    )
    parser.add_argument(
        "--flatten", action="store_true", help="Flatten the directory structure"
    )
    parser.add_argument(
        "--combine", action="store_true", help="Combine directories into one"
    )
    parser.add_argument(
        "--downloadPdf", action="store_true", help="Download web pages as PDFs"
    )
    parser.add_argument(
        "--writeHtml", action="store_true", help="Write HTML files during scraping"
    )
    parser.add_argument(
        "--includeWords",
        type=str,
        nargs="*",
        default=[],
        help="List of words to include in URLs",
    )
    parser.add_argument(
        "--excludeWords",
        type=str,
        nargs="*",
        default=[],
        help="List of words to exclude from URLs",
    )
    parser.add_argument(
        "--interactive", action="store_true", help="Run in interactive mode"
    )

    args = parser.parse_args()

    # typst.app / universe / --flatten - -combine - -writeHtml
    args.baseUrl = "typst.app/universe/"
    args.flatten = True
    args.combine = True
    args.writeHtml = True

    if not any(vars(args).values()) or args.interactive or not args.baseUrl:
        args.baseUrl = input("Enter the base URL: ")
        args.outputJson = (
            input("Enter the output JSON file name (default: urlList.json): ")
            or "urlList.json"
        )
        args.htmlDir = (
            input("Enter the HTML directory (default: Raw HTML Files): ")
            or "Raw HTML Files"
        )
        args.latexDir = (
            input("Enter the LaTeX directory (default: Latex Pages): ") or "Latex Pages"
        )
        args.flatten = input("Flatten the directory structure? (y/n): ").lower() == "y"
        args.combine = input("Combine directories into one? (y/n): ").lower() == "y"
        args.downloadPdf = input("Download web pages as PDFs? (y/n): ").lower() == "y"
        args.writeHtml = (
            input("Write HTML files during scraping? (y/n): ").lower() == "y"
        )
        includeWords = input("Enter words to include in URLs (comma-separated): ")
        excludeWords = input("Enter words to exclude from URLs (comma-separated): ")
        args.includeWords = (
            [word.strip() for word in includeWords.split(",")] if includeWords else []
        )
        args.excludeWords = (
            [word.strip() for word in excludeWords.split(",")] if excludeWords else []
        )

    if r"https://" not in args.baseUrl:

        print(f'"https://" not in {args.baseUrl}. Adding it.')

        args.baseUrl = f"https://{args.baseUrl}"

        time.sleep(2)

        os.system("clear")

    if args.baseUrl.count("/") > 2:

        print(
            f'Pathname beyond base domain found in "{args.baseUrl}". Reverting to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}", but only including URL\'s with "{args.baseUrl[args.baseUrl.index("/", 8):]}"'
        )

        args.includeWords.append(args.baseUrl[args.baseUrl.index("/", 8) :])
        args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

        time.sleep(2)

        os.system("clear")

    bar = tqdm(total=0, bar_format="{desc} {bar} Total: {total_fmt} [{elapsed}]")
    urlList = GetUrls(
        args.baseUrl,
        bar=bar,
        writeHtml=args.writeHtml,
        includeWords=args.includeWords,
        excludeWords=args.excludeWords,
        maxPage="package",
    )

    print(f"Scraped URLs: {urlList}")
    OutputJson(urlList=urlList, fileName=args.outputJson)

    if args.downloadPdf:
        urls = LoadUrlsFromJson(args.outputJson)
        outputDirectory = "downloadedPdfs"
        with tqdm(total=len(urls), desc="Processing URLs") as mainBar:
            for url in urls:
                mainBar.set_postfix_str(url)
                SavePageAsPdf(url, outputDirectory)
                mainBar.update(1)

    if args.flatten:
        print(f"Flattening directory: {args.latexDir}")
        FlattenDir(dirName=args.latexDir)

    if args.combine:
        print(f"Combining directories: {args.latexDir}")
        CombineDirs(dirName=args.latexDir)

    urlStructure = DirStructureFromURLList(urlList)
    OutputJsonWalk(walkGen=urlStructure, fileName="urlStructure.json")


if __name__ == "__main__":

    main()

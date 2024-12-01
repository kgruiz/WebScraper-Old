import argparse
import os
import time
from pathlib import *

from tqdm import tqdm

from Converter import (
    CombineDirs,
    CombineFiles,
    FlattenDir,
    GroupFilesByExtension,
    HtmlDirToLatex,
    HtmlDirToMarkdown,
    MarkdownToTypst,
)
from DirStructure import DirStructureFromURLList, OutputJsonWalk, PrintJsonWalk
from Downloader import LoadUrlsFromJson, SavePageAsPdf
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
        "--writeLatex",
        action="store_true",
        help="Write Latex files during scraping. Also activates --writeHtml.",
    )
    parser.add_argument(
        "--fileNameFull",
        action="store_true",
        help="Uses directory path as file name. Also activates --writeLatex.",
    )
    parser.add_argument(
        "--addedPrefix",
        type=str,
        default=None,
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
    parser.add_argument(
        "--maxDepth",
        type=int,  # Renamed from maxPage
        help="Maximum directory depth to scrape",
    )

    args = parser.parse_args()

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
        args.maxDepth = (
            input("Enter the maxDepth parameter (or leave blank for None): ") or None
        )

    if args.baseUrl[-1] != "/":

        args.baseUrl = f"{args.baseUrl}/"

    if r"https://" not in args.baseUrl:

        print(f'"https://" not in {args.baseUrl}. Adding it.')

        args.baseUrl = f"https://{args.baseUrl}"

        time.sleep(2)

        os.system("clear")

    if args.baseUrl.count("/") > 2:

        userChoice = input(
            f'Pathname beyond base domain found in "{args.baseUrl}". Do you want to revert to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}"? ([y]/n)'
        )

        if userChoice not in ["y", "n", ""]:

            userChoice = (
                input(
                    f'Invalid choice "{userChoice}". Reverting to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}". Do you want to only include URL\'s with "{args.baseUrl[args.baseUrl.index("/", 8):]}"? ([y]/n)'
                )
                .strip()
                .lower()
            )

            if userChoice == "y" or userChoice == "":

                args.includeWords.append(args.baseUrl[args.baseUrl.index("/", 8) :])
                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

            elif userChoice == "n":

                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

            else:

                print(
                    f'Invalid choice. Reverting to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}".'
                )
                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

        elif userChoice == "y" or userChoice == "":

            userChoice = (
                input(
                    f'Reverting to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}". Do you want to only include URL\'s with "{args.baseUrl[args.baseUrl.index("/", 8):]}"? ([y]/n)'
                )
                .strip()
                .lower()
            )

            if userChoice == "y" or userChoice == "":

                args.includeWords.append(args.baseUrl[args.baseUrl.index("/", 8) :])
                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

            elif userChoice == "n":

                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

            else:

                print(
                    f'Invalid choice. Reverting to base domain "{args.baseUrl[: args.baseUrl.index("/", 8)]}".'
                )
                args.baseUrl = args.baseUrl[: args.baseUrl.index("/", 8)]

        else:

            print(f'Keeping entire URL "{args.baseUrl}"')

        time.sleep(2)

        os.system("clear")

    if args.writeLatex:

        args.writeHtml = True

    time.sleep(2)

    bar = tqdm(total=0, bar_format="{desc} {bar} Total: {total_fmt} [{elapsed}]")
    urlList = GetUrls(
        args.baseUrl,
        bar=bar,
        writeHtml=args.writeHtml,
        includeWords=args.includeWords,
        excludeWords=args.excludeWords,
        maxDepth=args.maxDepth,  # Changed from maxPage
        htmlDirName=args.htmlDir,  # Added parameter
    )

    OutputJson(urlList=urlList, fileName=args.outputJson)

    if args.downloadPdf:
        urls = LoadUrlsFromJson(args.outputJson)
        outputDirectory = "downloadedPdfs"
        with tqdm(total=len(urls), desc="Processing URLs") as mainBar:
            for url in urls:
                mainBar.set_postfix_str(url)
                SavePageAsPdf(url, outputDirectory)
                mainBar.update(1)

    if args.writeLatex and args.writeHtml:

        print(f"Converting HTML Files to LaTeX")
        HtmlDirToLatex(
            htmlDir=args.htmlDir,
            latexDir=args.latexDir,
            fileNameFull=args.fileNameFull,
        )

    if args.flatten:
        print(f"Flattening directory: {args.latexDir}")
        FlattenDir(
            dirName=args.latexDir,
        )

    if args.combine:
        print(f"Combining directories: {args.latexDir}")
        CombineDirs(dirName=args.latexDir)

    urlStructure = DirStructureFromURLList(urlList)
    OutputJsonWalk(walkGen=urlStructure, fileName="urlStructure.json")


if __name__ == "__main__":

    # GroupFilesByExtension(dirPath="Package List LaTeX", ext=".tex")
    # GroupFilesByExtension(dirPath="Examples Book LaTeX", ext=".tex")
    # GroupFilesByExtension(dirPath="C Examples Book LaTeX", ext=".tex")
    # HtmlDirToLatex(htmlDir="Docs HTML", latexDir="Docs LaTeX")

    # startDirPath = Path(f".")

    # for item in startDirPath.rglob("*"):

    #     if item.is_dir():

    #         if "HTML" in item.name and "Universe" not in item.name:

    #             htmlDir = item.resolve()

    #             mkPath = htmlDir.parent / f"{htmlDir.parent.name} Markdown"

    #             mkPath.mkdir(parents=True, exist_ok=True)

    #             HtmlDirToMarkdown(
    #                 htmlDir=htmlDir.as_posix(), markdownDir=mkPath.as_posix()
    #             )

    startDirPath = Path(f".")

    dirNames = [
        Path("Examples Book/Examples Book Markdown"),
        Path("Package List/Package List Markdown"),
        Path("Typst Docs/Typst Docs Markdown"),
    ]

    # for item in dirNames:

    #     if item.is_dir():

    #         mdDir = item.resolve()

    #         GroupFilesByExtension(dirPath=mdDir, groupAll=True, ext=".md")

    dirNames = [
        Path("Examples Book/Combined Examples Book Markdown"),
        Path("Package List/Combined Package List Markdown"),
        Path("Typst Docs/Combined Typst Docs Markdown"),
    ]

    for directory in dirNames:

        directory = directory.resolve()

        mdPath = list(directory.iterdir())[0]

        typstFileName = Path(f'{directory.name.replace("Markdown", "Typst")}.typ')
        typstOutputDir = Path(
            directory.parent, directory.name.replace("Markdown", "Typst")
        )

        typstOutputDir.mkdir(parents=True, exist_ok=True)

        typstOutputFilePath = Path(typstOutputDir, typstFileName)

        MarkdownToTypst(filePath=mdPath, outPath=typstOutputFilePath)

    for directory in dirNames:

        combinedName = f"Combined {directory.name}"

        combinedDir = Path(directory.parent, combinedName)

        if combinedDir.exists():

            PrintJsonWalk(walkGen=os.walk(combinedDir), fileSize=True)

    raise SystemExit

    # main()

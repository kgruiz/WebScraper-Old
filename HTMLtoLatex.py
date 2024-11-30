import json
import os
import re

import pypandoc
from tqdm import tqdm

from DirStructure import PrintJsonWalk


def HtmlToLatex(htmlFilePath: str) -> str:
    """
    Convert an HTML file to LaTeX format.

    Parameters
    ----------
    htmlFilePath : str
        The file path to the input HTML file.

    Returns
    -------
    str
        The converted LaTeX string.
    """
    return pypandoc.convert_file(htmlFilePath, "tex")


def HtmlRemoveSections(htmlFilePath: str):
    """
    Remove specific sections from an HTML file.

    Parameters
    ----------
    htmlFilePath : str
        The file path to the input HTML file.
    """
    with open(htmlFilePath, "r") as file:

        content = file.read()

    mainPattern = r"(<main>.*</main>)"

    mainSection = re.search(pattern=mainPattern, string=content, flags=re.DOTALL)

    if mainSection:

        content = mainSection.group(1)

        with open(htmlFilePath, "w") as file:

            file.write(content)


def HtmlDirToLatex(htmlDir: str, latexDir: str, fileNameFull: bool = False) -> dict:
    """
    Convert all HTML files in a directory to LaTeX format.

    Parameters
    ----------
    htmlDir : str
        The directory containing HTML files.
    latexDir : str
        The directory where LaTeX files will be saved.
    fileNameFull : bool, optional
        Whether to use the full file name, by default False.

    Returns
    -------
    dict
        A dictionary mapping original HTML files to their LaTeX counterparts.
    """
    if htmlDir[-1] != "/":

        htmlDir += "/"

    if fileNameFull:

        latexDir = f"Full Path {latexDir}"

    os.makedirs(latexDir, exist_ok=True)

    dirStructure = os.walk(top=htmlDir)

    totalFiles = sum(
        1 for _, _, files in dirStructure for file in files if file.endswith(".html")
    )

    dirStructure = os.walk(top=htmlDir)

    i = 0

    with tqdm(total=totalFiles, desc="Converting HTML to LaTeX") as bar:

        for root, dirs, files in dirStructure:

            for fileName in files:

                if fileName.endswith(f".html"):

                    bar.set_postfix_str(f"{root.split("/")[-1]}/{fileName}", True)

                    baseName = fileName.split(".html")[0]

                    latexOutputDir = os.path.join(latexDir, root.replace(htmlDir, ""))

                    os.makedirs(latexOutputDir, exist_ok=True)

                    htmlFilePath = os.path.join(root, fileName)

                    HtmlRemoveSections(htmlFilePath=htmlFilePath)

                    latexFile = HtmlToLatex(htmlFilePath=htmlFilePath)

                    displayName = rf"\title{{{root.split(htmlDir)[1]}/{baseName}}}"

                    latexOutputPath = os.path.join(latexOutputDir, f"{baseName}.tex")

                    if fileNameFull:

                        fullFileName = f"{root.replace(htmlDir, "").replace("/", "_")}-{baseName}.tex"

                        latexOutputPath = os.path.join(latexOutputDir, fullFileName)

                    with open(latexOutputPath, "w") as file:

                        file.write(f"{displayName}\n\n")

                        file.write(latexFile)

                    bar.update()


def FlattenDir(dirName: str) -> None:
    """
    Flatten the directory structure by moving all HTML files to a single directory.

    Parameters
    ----------
    dirName : str
        The name of the directory to flatten.
    """
    if dirName.find(" ") == -1:

        outDir = f"Flat-{dirName}"

    else:

        outDir = f"Flat {dirName}"

    currentPath = os.path.abspath(dirName)

    currentDir = currentPath[: currentPath.rfind("/")]

    print(currentDir)

    outDir = os.path.join(currentDir, outDir)

    print(outDir)

    os.makedirs(outDir, exist_ok=True)

    directory = os.walk(dirName)

    totalFiles = sum(
        1 for _, _, files in directory for file in files if file.endswith(".html")
    )

    directory = os.walk(top=dirName)

    with tqdm(total=totalFiles, desc=f"Flattening {dirName}") as bar:

        for root, dirs, files in directory:

            for fileName in files:

                bar.set_postfix_str(f"{root.split("/")[-1]}/{fileName}", True)

                outputName = os.path.join(outDir, os.path.basename(fileName))

                with open(os.path.join(root, fileName), "r") as file:

                    content = file.read()

                with open(outputName, "w") as file:

                    file.write(content)


def CombineDirs(dirName: str, addFullName: bool = False) -> None:
    """
    Combine multiple directories into one.

    Parameters
    ----------
    dirName : str
        The name of the directory to combine.
    addFullName : bool, optional
        Whether to add the full name of the files, by default False.
    """
    if dirName.find(" ") == -1:

        outDir = f"Combined-{dirName}"

    else:

        outDir = f"Combined {dirName}"

    currentPath = os.path.abspath(dirName)

    currentDir = currentPath[: currentPath.rfind("/")]

    print(currentDir)

    outDir = os.path.join(currentDir, outDir)

    print(outDir)

    os.makedirs(outDir, exist_ok=True)

    directory = os.walk(dirName)

    totalFiles = sum(
        1 for _, _, files in directory for file in files if file.endswith(".html")
    )

    directory = os.walk(top=dirName)

    with tqdm(total=totalFiles, desc=f"Combining {dirName}") as bar:

        for root, dirs, files in directory:

            for directory in dirs:

                bar.set_postfix_str(f"{root.split("/")[-1]}/{directory}", True)

                dirPath = os.path.join(root, directory)

                combinedDirName = os.path.join(outDir, root.replace(f"{dirName}/", ""))

                os.makedirs(combinedDirName, exist_ok=True)

                combinedFileName = os.path.join(combinedDirName, f"{directory}.tex")

                if addFullName:

                    combinedFileName = os.path.join(
                        combinedDirName,
                        f"{root.replace(f"{dirName}/", "").replace("/", "-")}-{directory}.tex",
                    )

                dirFiles = os.listdir(dirPath)

                dirContent = []

                for entry in dirFiles:

                    if os.path.isdir(os.path.join(dirPath, entry)):

                        continue

                    filePath = os.path.join(dirPath, entry)

                    with open(filePath, "r") as file:

                        dirContent.append(file.read())

                with open(combinedFileName, "w") as file:

                    for subFile in dirContent:

                        file.write(subFile)

                        file.write(f"\n\n")

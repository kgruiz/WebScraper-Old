import json
import os
import re
import shutil
from math import ceil
from pathlib import Path
from typing import List, Optional

import html2text
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

    outDir = os.path.join(currentDir, outDir)

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


def CombineFiles(
    dirName: str,
    outDir: str,
    addFullName: bool = False,
    maxLength: int = 3000,
) -> None:

    def WriteGroup(group: List[str], groupNum: int, outDir: str) -> None:

        outputPath = os.path.join(outDir, f"Group{groupNum}.tex")
        outputPath = os.path.join(
            outDir, f"{outDir.replace("/","_")}-{groupNumber}.tex"
        )

        with open(outputPath, "w") as file:

            for fileContent in group:

                file.write(f"{fileContent}\n\n")

    os.makedirs(outDir, exist_ok=True)

    directoryFiles = os.listdir(path=dirName)

    totalFiles = len(directoryFiles)

    with tqdm(total=totalFiles, desc=f"Combining Files in  {dirName}") as bar:

        currentFile = []
        currentLength = 0
        groupNumber = 1

        for fileName in directoryFiles:

            filePath = os.path.join(dirName, fileName)

            if os.path.isdir(filePath):

                continue

            with open(filePath, "r") as file:

                content = file.read()

            contentLength = len(content.splitlines())

            if contentLength >= maxLength:

                WriteGroup(
                    group=[content],
                    groupNum=groupNumber,
                    outDir=outDir,
                )
                groupNumber += 1

            if currentLength + contentLength <= maxLength:

                currentFile.append(content)
                currentLength += contentLength

            else:

                WriteGroup(
                    group=currentFile,
                    groupNum=groupNumber,
                    outDir=outDir,
                )
                groupNumber += 1
                currentLength = 0
                currentFile = []

        if len(currentFile) > 0:

            WriteGroup(
                group=currentFile,
                groupNum=groupNumber,
                outDir=outDir,
            )


def HTMLToMarkdown(htmlFile: str, outFile: str) -> None:

    with open(htmlFile, "r") as file:

        htmlContent = file.read()

    htmlConverter = html2text.HTML2Text()
    htmlConverter.ignore_links = False
    mdContent = htmlConverter.handle(htmlContent)

    with open(outFile, "w") as file:

        file.write(mdContent)


def HtmlDirToMarkdown(
    htmlDir: str, markdownDir: str, fileNameFull: bool = False
) -> None:
    """
    Convert all HTML files in a directory to Markdown format using HTMLToMarkdown and HtmlRemoveSections.

    Parameters
    ----------
    htmlDir : str
        The directory containing HTML files.
    markdownDir : str
        The directory where Markdown files will be saved.
    fileNameFull : bool, optional
        Whether to use the full file name, by default False.
    """
    if htmlDir[-1] != "/":
        htmlDir += "/"

    os.makedirs(markdownDir, exist_ok=True)

    dirStructure = os.walk(top=htmlDir)

    totalFiles = sum(
        1 for _, _, files in dirStructure for file in files if file.endswith(".html")
    )

    dirStructure = os.walk(top=htmlDir)

    with tqdm(total=totalFiles, desc="Converting HTML to Markdown") as bar:
        for root, dirs, files in dirStructure:
            for fileName in files:
                if fileName.endswith(".html"):
                    bar.set_postfix_str(f"{root.split('/')[-1]}/{fileName}", True)

                    baseName = fileName.split(".html")[0]

                    markdownOutputDir = os.path.join(
                        markdownDir, root.replace(htmlDir, "")
                    )
                    os.makedirs(markdownOutputDir, exist_ok=True)

                    htmlFilePath = os.path.join(root, fileName)
                    markdownOutputPath = os.path.join(
                        markdownOutputDir, f"{baseName}.md"
                    )

                    if fileNameFull:
                        fullFileName = f"{root.replace(htmlDir, '').replace('/', '_')}-{baseName}.md"
                        markdownOutputPath = os.path.join(
                            markdownOutputDir, fullFileName
                        )

                    # Call HtmlRemoveSections before conversion
                    HtmlRemoveSections(htmlFilePath=htmlFilePath)

                    # Call HTMLToMarkdown for conversion
                    HTMLToMarkdown(htmlFile=htmlFilePath, outFile=markdownOutputPath)

                    bar.update()


def MarkdownToTypst(filePath: Path, outPath: Path) -> None:

    with filePath.open("r") as file:

        content = file.read()

    minLevel = 1
    maxLevel = 6

    for headingLevel in range(minLevel, maxLevel + 1):

        headingPattern = rf"^{'#' * headingLevel} "

        content = re.sub(
            pattern=headingPattern,
            repl=rf"{'=' * headingLevel} ",
            string=content,
            flags=re.MULTILINE,
        )

    functionStartLinePattern = r"(^\s*#[a-zA-Z].*)"

    matches = re.finditer(
        pattern=functionStartLinePattern,
        string=content,
        flags=re.MULTILINE,
    )

    functionRanges = []

    for match in matches:
        functionStartLine = match.group(1)

        openingParenth = functionStartLine.count("(")
        openingCurly = functionStartLine.count("{")

        closingParenth = functionStartLine.count(")")
        closingCurly = functionStartLine.count("}")

        if openingParenth != closingParenth or openingCurly != closingCurly:
            charIndex = match.end()

            while openingParenth != closingParenth or openingCurly != closingCurly:
                if charIndex >= len(content):
                    break  # Prevent IndexError
                char = content[charIndex]

                if char == "(":
                    openingParenth += 1
                elif char == ")":
                    closingParenth += 1
                elif char == "{":
                    openingCurly += 1
                elif char == "}":
                    closingCurly += 1

                charIndex += 1

            nextNewline = content.find("\n", charIndex)

            if nextNewline != -1:

                charIndex = nextNewline + 1

            functionRanges.append((match.start(), charIndex))

    bulletPattern = r"^(\s*)\*(\s\S)"

    content = re.sub(
        pattern=bulletPattern,
        repl=rf"\1-\2",
        string=content,
        flags=re.MULTILINE,
    )

    italicPattern = r"(?<!\*)\*(?!\s)([^\*\s][^\*]*[^\*\s])\*(?!\*)"
    boldPattern = r"\*\*(.+?)\*\*"

    newContent = ""
    lastIndex = 0

    for start, end in functionRanges:
        # Apply substitutions outside function ranges
        outside = content[lastIndex:start]
        outside = re.sub(
            pattern=italicPattern,
            repl=rf"_\1_",
            string=outside,
            flags=re.MULTILINE | re.DOTALL,
        )
        outside = re.sub(
            pattern=boldPattern,
            repl=rf"*\1*",
            string=outside,
            flags=re.MULTILINE | re.DOTALL,
        )
        newContent += outside
        # Add function range without substitutions
        newContent += content[start:end]
        lastIndex = end
    # Apply substitutions to the remaining content after the last function range
    outside = content[lastIndex:]
    outside = re.sub(
        pattern=italicPattern,
        repl=rf"_\1_",
        string=outside,
        flags=re.MULTILINE | re.DOTALL,
    )
    outside = re.sub(
        pattern=boldPattern,
        repl=rf"*\1*",
        string=outside,
        flags=re.MULTILINE | re.DOTALL,
    )
    newContent += outside

    content = newContent

    with outPath.open("w") as file:

        file.write(content)


def GroupFilesByExtension(
    dirPath: str,
    ext: str,
    groupedFileName: Optional[str] = None,
    groupAll: bool = False,
):
    """
    Recursively groups all files with a specified extension within a directory and its subdirectories
    into new combined files. Each combined file is named either using the provided `groupedFileName`
    or defaults to `{parentDirName}.{ext}`. Additionally, each file's content in the grouped file is
    preceded by a title line indicating the original file's relative path from the parent of `dirPath`.
    If the extension is `.tex`, the title line is formatted in LaTeX.

    After grouping, if a directory's only content is the grouped file, the directory is deleted and
    the grouped file is moved up one directory level.

    Parameters:
        dirPath (str): The path to the root directory to process.
        ext (str): The file extension to filter by (e.g., 'txt', 'py', 'tex').
        groupedFileName (Optional[str]): Optional name for the grouped files. If not provided,
            files will be named as `{parentDirName}.{ext}`.

    Raises:
        ValueError: If the provided `dirPath` is not a valid directory.
    """

    def DelEmptyGroupedDir(dirPath: str, groupedFiles: set) -> None:

        dirPath = Path(dirPath)
        dirEntries = list(dirPath.iterdir())

        if len(dirEntries) == 1:

            entry = dirEntries[0]

            if not entry.is_dir() and entry in groupedFiles:

                parentDir = dirPath.parent
                newPath = parentDir / entry.name
                entry.rename(newPath)

            dirEntries = list(dirPath.iterdir())

            if len(dirEntries) != 0:

                raise Exception(
                    f"Unexpected file(s) {dirEntries} still found in {dirPath}"
                )

            else:

                dirPath.rmdir()

    # Resolve the directory path
    dirPathPath = Path(dirPath).resolve()

    if not dirPathPath.is_dir():
        raise ValueError(f"The path {dirPathPath} is not a valid directory.")

    # Normalize the extension
    normalizedExt = ext.lower().lstrip(".")

    groupedFiles = set()

    if groupAll:

        def HeadingFromPath(filePath: Path, baseDir: Path, ext: str) -> str:

            relativePath = filePath.relative_to(baseDir)
            pathStr = relativePath.as_posix()

            if ext == ".tex":

                return rf"\section{{{pathStr}}}"

            elif ext == ".md":

                return rf"# **{pathStr}**"

            else:

                return rf"## {pathStr}"

        numFiles = sum(
            1
            for entry in dirPathPath.rglob("*")
            if not entry.is_file() or entry.suffix != ext
        )

        with tqdm(total=numFiles, desc="Reading files", unit="file") as bar:

            files: List[tuple[Path, str]] = []

            for entry in dirPathPath.rglob("*"):

                if not entry.is_file() or entry.suffix != ext:

                    continue

                with entry.open("r") as file:

                    fileContent = file.read()

                files.append((entry, fileContent))

                bar.update()

        with tqdm(total=len(files), desc="Writing Grouped File", unit="file") as bar:

            if groupedFileName:

                groupedName = groupedFileName

            else:

                groupedName = f"{dirPathPath.name}.{normalizedExt}"

            outDir = Path(dirPathPath.parent, f"Combined {dirPathPath.name}")

            outDir.mkdir(parents=True, exist_ok=True)

            groupedFile = Path(outDir, groupedName)

            with groupedFile.open("w") as file:

                file.write(
                    f"\n\n{HeadingFromPath(filePath=dirPathPath, baseDir=dirPathPath.parent, ext=ext)}\n\n"
                )

                for filePath, fileContent in files:

                    file.write(
                        f"\n\n{HeadingFromPath(filePath=filePath, baseDir=dirPathPath, ext=ext)}\n\n"
                    )

                    file.write(fileContent)

                    bar.update()

    else:

        # Define the root output directory
        outputRoot = dirPathPath / f"Combined {dirPathPath.name}"
        outputRoot.mkdir(parents=True, exist_ok=True)

        # Gather all subdirectories using os.walk (bottom-up to handle deletions)
        allDirs = [root for root, dirs, files in os.walk(dirPathPath, topdown=False)]

        # Initialize tqdm with total directories for better progress tracking
        with tqdm(total=len(allDirs), desc="Processing directories", unit="dir") as bar:
            for root in allDirs:
                currentDirPath = Path(root)
                relativePath = currentDirPath.relative_to(dirPathPath)
                outputDirPath = outputRoot / relativePath
                outputDirPath.mkdir(parents=True, exist_ok=True)

                # Filter files with the specified extension
                filteredFiles = [
                    f
                    for f in os.listdir(currentDirPath)
                    if f.lower().endswith(f".{normalizedExt}")
                    and (currentDirPath / f).is_file()
                ]

                if not filteredFiles:
                    # No matching files, skip to next directory
                    bar.update(1)
                    continue

                # Determine the name of the grouped file
                if groupedFileName:
                    groupedName = groupedFileName
                else:
                    groupedName = f"{currentDirPath.name}.{normalizedExt}"

                groupedFilePath = outputDirPath / groupedName

                try:
                    with groupedFilePath.open("w", encoding="utf-8") as outfile:

                        if groupedFilePath in groupedFiles:

                            raise Exception(f"File {groupedFilePath} already exists")

                        else:

                            groupedFiles.add(groupedFilePath)

                        for fileName in filteredFiles:
                            filePath = currentDirPath / fileName
                            try:
                                with filePath.open("r", encoding="utf-8") as infile:
                                    content = infile.read()

                                    # Prepare the title line with relative path from parent of dirPath
                                    # This goes back one more directory level
                                    relativeFilePath = filePath.relative_to(
                                        dirPathPath.parent
                                    )
                                    if normalizedExt == "tex":
                                        # LaTeX formatted title
                                        titleLine = f"\\section{{{relativeFilePath}}}\n"
                                    else:
                                        # Plain text title
                                        titleLine = f"Path: {relativeFilePath}\n"

                                    # Write the title and content to the grouped file
                                    outfile.write(titleLine)
                                    outfile.write(content)
                                    outfile.write(
                                        "\n\n"
                                    )  # Optional: Add spacing between files
                            except Exception as fileErr:
                                # Update tqdm postfix with file read error
                                bar.set_postfix(
                                    file_error=f"Error reading {filePath.name}"
                                )
                        # Reset postfix after successful processing
                        bar.set_postfix(file_error="")
                except Exception as groupErr:
                    # Update tqdm postfix with grouped file write error
                    bar.set_postfix(group_error=f"Error writing {groupedFilePath.name}")
                    bar.update(1)
                    continue  # Skip further processing for this directory

                # Update the progress bar
                bar.update(1)

        allDirs = [
            Path(root) for root, dirs, files in os.walk(outputRoot, topdown=False)
        ]

        for root in allDirs:

            if root == outputRoot:

                continue

            DelEmptyGroupedDir(dirPath=root, groupedFiles=groupedFiles)

    # Final description update to indicate completion
    with tqdm(total=0) as finalBar:
        finalBar.set_description("Grouping completed")
        finalBar.refresh()

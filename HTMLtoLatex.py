import json
import os
import re

import pypandoc
from tqdm import tqdm

from DirStructure import PrintJsonWalk


def HTMLtoLatex(htmlFilePath: str) -> str:

    return pypandoc.convert_file(htmlFilePath, "tex")


def HTMLDirtoLatex(htmlDir: str, latexDir: str, fileNameFull: bool = False) -> dict:

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

                    latexFile = HTMLtoLatex(htmlFilePath=htmlFilePath)

                    displayName = rf"\\title{{{root.split(htmlDir)[1]}/{baseName}}}"

                    pattern = r"(.*)(\\begin\{itemize\}((?:(?!\\begin\{itemize\}|\\end\{itemize\}).)*\\end\{itemize\})\s*\\section\{.*)"

                    latexFile = re.sub(
                        pattern,
                        f"{displayName}\n\n\\2",
                        latexFile,
                        count=1,
                        flags=re.DOTALL,
                    )

                    latexOutputPath = os.path.join(latexOutputDir, f"{baseName}.tex")

                    if fileNameFull:

                        fullFileName = f"{root.replace(htmlDir, "").replace("/", "_")}-{baseName}.tex"

                        latexOutputPath = os.path.join(latexOutputDir, fullFileName)

                    with open(latexOutputPath, "w") as file:

                        file.write(latexFile)

                    bar.update()


def FlattenDir(dirName: str) -> None:

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


if __name__ == "__main__":

    htmlDir = "Raw HTML Files"
    latexDir = "Latex Pages"

    # HTMLDirtoLatex(htmlDir=htmlDir, latexDir=latexDir, fileNameFull=True)

    FlattenDir(dirName=f"Full Path Latex Pages")

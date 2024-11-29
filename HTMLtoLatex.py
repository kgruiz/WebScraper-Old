import json
import os
import re

import pypandoc
from tqdm import tqdm

from DirStructure import PrintJsonWalk


def HTMLtoLatex(htmlFilePath: str) -> str:

    return pypandoc.convert_file(htmlFilePath, "tex")


def HTMLDirtoLatex(htmlDir: str, latexDir: str) -> dict:

    if htmlDir[-1] != "/":

        htmlDir += "/"

    os.makedirs(latexDir, exist_ok=True)

    dirStructure = os.walk(top=htmlDir)

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

                    latexOutputDir = os.path.join(latexDir, root.split(htmlDir)[1])

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

                    with open(latexOutputPath, "w") as file:

                        file.write(latexFile)

                    bar.update()


if __name__ == "__main__":

    htmlDir = "Raw HTML Files"
    latexDir = "Latex Pages"

    HTMLDirtoLatex(htmlDir=htmlDir, latexDir=latexDir)

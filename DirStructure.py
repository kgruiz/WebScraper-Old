import json
import os
from typing import List
from urllib.parse import urlparse


def BuildURLTree(urls):

    tree = {}

    for url in urls:
        parsed = urlparse(url)
        path = parsed.path.strip("/").split("/")
        currentLevel = tree

        for part in path[:-1]:  # Directories
            currentLevel = currentLevel.setdefault(part, {})
        # The last part is a file
        if (
            path[-1] and currentLevel is not None
        ):  # Ensure path is not empty and currentLevel is not None
            currentLevel.setdefault(path[-1], None)

    return tree


def WalkGen(tree, currentPath=""):

    dirs, files = [], []

    for name, subtree in tree.items():
        if subtree is None:
            files.append(name)
        else:
            dirs.append(name)

    yield (currentPath, dirs, files)

    for directory in dirs:
        newPath = f"{currentPath}/{directory}" if currentPath else directory
        yield from WalkGen(tree[directory], newPath)


def DirStructureFromURLList(urlList: List[str]):

    tree = BuildURLTree(urlList)

    return WalkGen(tree)


def PrintJsonWalk(walkGen):

    result = []

    for root, dirs, files in walkGen:

        result.append({"root": root, "directories": dirs, "files": files})

    print(json.dumps(result, indent=4))

import json
import os
from typing import List
from urllib.parse import urlparse


def BuildURLTree(urls):
    """
    Build a hierarchical tree structure from a list of URLs.

    Parameters
    ----------
    urls : list
        A list of URL strings.

    Returns
    -------
    dict
        A nested dictionary representing the URL tree.
    """
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
    """
    Generate a walk of the directory structure tree.

    Parameters
    ----------
    tree : dict
        The directory tree.
    currentPath : str, optional
        The current path in the walk, by default "".

    Yields
    ------
    tuple
        A tuple containing the current path, list of directories, and list of files.
    """
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
    """
    Create a directory structure generator from a list of URLs.

    Parameters
    ----------
    urlList : List[str]
        A list of URL strings.

    Returns
    -------
    generator
        A generator yielding directory structure tuples.
    """
    tree = BuildURLTree(urlList)

    return WalkGen(tree)


def PrintJsonWalk(walkGen):
    """
    Print the directory walk as a JSON-formatted string.

    Parameters
    ----------
    walkGen : generator
        The directory walk generator.
    """
    result = []

    for root, dirs, files in walkGen:

        result.append({"root": root, "directories": dirs, "files": files})

    print(json.dumps(result, indent=4))

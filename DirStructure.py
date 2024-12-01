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
            if not part:  # Skip empty parts
                continue
            if currentLevel is None:
                break
            currentLevel = currentLevel.setdefault(part, {})

        if path[-1] and currentLevel is not None:
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


def PrintJsonWalk(walkGen, fileSize: bool = False):
    """
    Print the directory walk as a JSON-formatted string, including cumulative directory sizes.

    Parameters
    ----------
    walkGen : generator
        The directory walk generator.
    fileSize : bool, optional
        If True, include the size of each file with appropriate units, by default False.
    """

    result = []
    sizeMap = {}

    for root, dirs, files in walkGen:
        totalSize = 0

        if fileSize:
            filesWithSize = []

            for file in files:
                filePath = os.path.join(root, file)
                try:
                    sizeBytes = os.path.getsize(filePath)
                    totalSize += sizeBytes

                    if sizeBytes < 1024:
                        size = f"{sizeBytes} B"
                    elif sizeBytes < 1024**2:
                        size = f"{round(sizeBytes / 1024, 2)} KB"
                    elif sizeBytes < 1024**3:
                        size = f"{round(sizeBytes / (1024 ** 2), 2)} MB"
                    else:
                        size = f"{round(sizeBytes / (1024 ** 3), 2)} GB"

                    filesWithSize.append({"name": file, "size": size})
                except OSError:
                    filesWithSize.append({"name": file, "size": None})

            # Calculate cumulative size from subdirectories
            for dir in dirs:
                subdirPath = os.path.join(root, dir)
                totalSize += sizeMap.get(subdirPath, 0)

            # Format totalSize with appropriate units
            if totalSize < 1024:
                totalSizeFormatted = f"{totalSize} B"
            elif totalSize < 1024**2:
                totalSizeFormatted = f"{round(totalSize / 1024, 2)} KB"
            elif totalSize < 1024**3:
                totalSizeFormatted = f"{round(totalSize / (1024 ** 2), 2)} MB"
            else:
                totalSizeFormatted = f"{round(totalSize / (1024 ** 3), 2)} GB"

            sizeMap[root] = totalSize
            result.append(
                {
                    "root": root,
                    "directories": dirs,
                    "files": filesWithSize,
                    "totalSize": totalSizeFormatted,
                }
            )
        else:
            result.append(
                {
                    "root": root,
                    "directories": dirs,
                    "files": files,
                    "totalSize": totalSize,
                }
            )

    print(json.dumps(result, indent=4))


def OutputJsonWalk(walkGen, fileName: str, fileSize: bool = False):
    """
    Output the directory walk as a JSON file, including cumulative directory sizes.

    Parameters
    ----------
    walkGen : generator
        The directory walk generator.
    fileName : str
        The name of the output JSON file.
    fileSize : bool, optional
        If True, include the size of each file with appropriate units, by default False.
    """

    result = []
    sizeMap = {}

    for root, dirs, files in walkGen:
        totalSize = 0

        if fileSize:
            filesWithSize = []

            for file in files:
                filePath = os.path.join(root, file)
                try:
                    sizeBytes = os.path.getsize(filePath)
                    totalSize += sizeBytes

                    if sizeBytes < 1024:
                        size = f"{sizeBytes} B"
                    elif sizeBytes < 1024**2:
                        size = f"{round(sizeBytes / 1024, 2)} KB"
                    elif sizeBytes < 1024**3:
                        size = f"{round(sizeBytes / (1024 ** 2), 2)} MB"
                    else:
                        size = f"{round(sizeBytes / (1024 ** 3), 2)} GB"

                    filesWithSize.append({"name": file, "size": size})
                except OSError:
                    filesWithSize.append({"name": file, "size": None})

            # Calculate cumulative size from subdirectories
            for dir in dirs:
                subdirPath = os.path.join(root, dir)
                totalSize += sizeMap.get(subdirPath, 0)

            # Format totalSize with appropriate units
            if totalSize < 1024:
                totalSizeFormatted = f"{totalSize} B"
            elif totalSize < 1024**2:
                totalSizeFormatted = f"{round(totalSize / 1024, 2)} KB"
            elif totalSize < 1024**3:
                totalSizeFormatted = f"{round(totalSize / (1024 ** 2), 2)} MB"
            else:
                totalSizeFormatted = f"{round(totalSize / (1024 ** 3), 2)} GB"

            sizeMap[root] = totalSize
            result.append(
                {
                    "root": root,
                    "directories": dirs,
                    "files": filesWithSize,
                    "totalSize": totalSizeFormatted,
                }
            )
        else:
            result.append(
                {
                    "root": root,
                    "directories": dirs,
                    "files": files,
                    "totalSize": totalSize,
                }
            )

    with open(fileName, "w") as file:
        json.dump(result, file, indent=4)

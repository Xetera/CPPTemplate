# C++ Template

Template + tools for getting C++ homework done quick.

All these scripts utilize unix tools so being on a linux VM is almost required
unless you're running cmder or cygwin on Windows which
you can get [here](http://cmder.net/) [or here](https://www.cygwin.com/install.html) respectively.

## How To:
1) `git clone https://github.com/Xetera/CPPTemplate.git mycoolhomework`

2) `cd mycoolhomework`

That's it, you're good to go!

If necessary, place new .cpp files inside `src/` and .h files inside `include/` or better yet just use `generate.sh` to generate them automatically.

##### Tip:
If you would like a reusable shell file to clone new projects in a folder without each individual folder being a git repo clone you can make 
a file called `create_project.sh` and put it in the root to reuse.

```sh
if [[ -z "$1" ]]; then
    echo "Must specify a folder name"
    exit 1
fi

# cloned git repos are still a copy of the original owner
# and makes it difficult to add to other git repos so
# we just delete the .git folder to make it easier to commit a project folder
git clone https://github.com/Xetera/CPPTemplate.git "$1" && rm -rf "$1/.git"
```

you can then use `bash create_project.sh my_project` to make a new folder and delete the git repo

If you wish to use the scripts as executables instead of doing `bash run.sh` every time you can run the command `chmod +x run.sh` which will let you do `./run.sh` which is a lot more convenient.

## generate.sh

Generates new .h/.cpp file combinations in the right folders with the following placeholders.

```cpp
// src/file.cpp
#include "file.h"

// include/file.h
#pragma once
```

#### Usage

- Filename: the name you want to give to the file

`bash run.sh [Filename]`

## run.sh

Runs the latest compiled file and copies the output to a `.txt` file without using the `script` command. The file is deleted on each command usage.

#### Usage

`bash run.sh`

## zip.sh

Compresses relevant files into a `tar.gz` file for easy submission on canvas.

#### Zips the following files:

- src/\*
- include/\*
- Makefile
- *.scr

#### Usage:

- Filename: the name you want to give to the file (not including the extension) **optional; homework.tar.gz by default**

`bash zip.sh [Filename]`

#### Example:

`bash zip.sh hw01`

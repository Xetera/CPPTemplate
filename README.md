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
- terminalIO.txt

#### Usage:

- Filename: the name you want to give to the file (not including the extension) **optional; homework.tar.gz by default**

`bash zip.sh [Filename]`

#### Example:

`bash zip.sh hw01`

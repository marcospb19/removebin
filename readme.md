# RemoveBin

RemoveBin cleans mess from C and C++ workspaces

Easy smart shell script with ~120 lines (< 3KB) to remove binaries from folders recursively.

Note: RemoveBin will always show all files and ask before removing.


## Installation
```shell
git clone https://github.com/marcospb19/removebin
cd removebin
sudo cp removebin /usr/bin
```

Alternatively you can use the simple script `install.sh` instead of the last command

## Usage
Removing 2 specific binary files \
`removebin file1 file2`

Remove all binary files from folder \
`removebin folder`

Removing recursively from a folder
`removebin folder --recursive ` or
`removebin folder -R`

Using your shell to pass all files with specific prefix \
`removebin prefix*`

You can combine all of this examples.

#### TODO and future
TODO: Use something (maybe `find`) to speed up the directory percursion

Also RemoveBin might eventually become an C program in the future

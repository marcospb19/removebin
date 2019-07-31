# RemoveBin

Easy shell script with less than 100 lines to remove binaries from folders recursively.

RemoveBin will always ask before removing the files.

## Installation

```
git clone https://github.com/marcospb19/removebin
cd removebin
sudo ./install.sh
```

You can inspect `install.sh` to verify that it just copies the file to
`/usr/bin/removebin`

### Usage

Remove binary files \
`removebin file1 file2...`

To remove all binary files from current folder \
`removebin . -R` or `removebin . --recursive`

To remove all binary files from another folder \
`removebin anotherFolder/ -R` or `removebin anotherFolder --recursive`

To remove all binary files starting with specific name \
`removebin (name)*`

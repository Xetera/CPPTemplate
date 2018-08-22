#!/usr/bin/env bash

check_available () {
    if ! hash "$1" 2> /dev/null; then
        echo -e "\e[31m[ERROR] \e[0mAre you running on a linux VM or using cygwin? Your system doesn't seem to have a '$1' command."
        exit 1
    fi
}

check_available "date"
check_available "tee"

date=$( date +%Y-%m-%d )

# Compatibility with cygwin / cmder
if [[ -f "bin/program.exe" ]]; then
    echo -e "\e[36m[INFO] \e[0mStarting exe file..."
    program="bin/program.exe"
    elif [[ -f "bin/program.out" ]] || [[ -f "bin/program" ]]; then
    echo -e "\e[36m[INFO] \e[0mStarting binary file..."
    program="./bin/program"
else
    echo -e "\e[31m[ERROR] \e[0mCould not find a compiled binary file!"
    exit 1
fi

# Truncate existing file and overwrite
echo "Output for HW at [$date]" > terminalIO.txt
echo "\$ $program" >> terminalIO.txt

# Don't want to redirect all output to a file, just copy it over
$program | tee -a "terminalIO.txt"


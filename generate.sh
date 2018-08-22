#!/usr/bin/env bash

gen_src () {
    touch "src/$1.cpp"
    echo "#include \"$1.h\"" >> "src/$1.cpp"
}

gen_header () {
    touch "include/$1.h"
    echo "#pragma once" >> "include/$1.h"
}

if ! hash touch 2> /dev/null; then
    echo -e "\e[31m[ERROR] \e[0mAre you running on a linux VM or using cygwin? Your system doesn't seem to have a 'touch' command."
    exit 1
fi

if [[ -z "$1" ]]; then
    echo -e "\e[31m[ERROR] \e[0mMust specify a file to generate!"
    exit 1
fi

if [ -f "src/$1.cpp" ] && [ ! -f "include/$1.h" ]; then
    echo -e "\e[36m[INFO] \e[0mThe source file $1.cpp exists, creating header..."
    gen_header $1
    echo -e "\e[32m[SUCCESS] \e[0mFiles successfully created."
    exit 0
fi

if [ ! -f "src/$1.cpp" ] && [ -f "include/$1.h" ]; then
    echo -e "\e[36m[INFO] \e[0mThe header $1.h exists, creating cpp file..."
    gen_src $1
    echo -e "\e[32m[SUCCESS] \e[0mFiles successfully created."
    exit 0
fi

if [ -f "src/$1.cpp" ] && [ -f "include/$1.h" ]; then
    echo -e "\e[31m[ERROR] \e[0m'$1' already exists, could not generate files."
    exit 1
fi

{
    gen_src $1
    gen_header $1
    echo -e "\e[32m[SUCCESS] \e[0mFiles successfully created."
    } || {
    echo -e "\e[31m[ERROR] \e[0mThere was a problem creating these files."
}

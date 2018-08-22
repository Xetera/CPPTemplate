#!/usr/bin/env bash
if ! hash tar 2> /dev/null; then
    echo -e "\e[31m[ERROR] \e[0mAre you running on a linux VM? Your system doesn't seem to have a 'tar' command."
    exit 1
fi

if [[ -z "$1" ]]; then
    filename="homework.tar.gz"
else
    filename="$1.tar.gz"
fi

if [[ -f "$filename" ]]; then
    echo -e "\e[36m[INFO] \e[0mFound existing tar file, overwriting."
fi

echo -e "\e[36m[INFO] \e[0mZipping..."

{
    tar -czf $filename src include Makefile
    echo -e "\e[32m[SUCCESS] \e[0mZipped files successfully!"
    } || {
    echo -e "\e[31m[ERROR] \e[0mThere was a problem with the zipping..."
}
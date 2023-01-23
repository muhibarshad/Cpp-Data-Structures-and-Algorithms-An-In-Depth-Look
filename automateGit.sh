#!/usr/bin/env bash

if [ $# -eq 0]
then
    echo "Please provide a commit message"
    exit 1
fi

function gitCommands() {
    git add -A
    git commit -m "$1"
    git push origin main
}

gitCommands "$1" && echo "Git Commands Executed Successfully"

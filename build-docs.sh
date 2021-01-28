#!/bin/sh

buildhtml() {
    echo "Building html doc $1 in $2/..."
    pandoc -f markdown -t html -s $2/$1.md -o $2/$1.html
}

buildman() {
    echo "Building man page $1 in $2/..."
    pandoc -f markdown -t man -s $2/$1.md -o $2/$1
    buildhtml $1 $2
}

buildman cbsh.1 cbsh
buildman nezumi.1 nezumi

# fix man pages
# sed -i 's/.TH "CBSH(1)" "" "" "" ""/.TH "CBSH" "1" "cbsh-1.0" "December 2020" ""/' cbsh/cbsh.1

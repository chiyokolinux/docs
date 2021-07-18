#!/bin/sh

buildall() {
    buildman $1 $2
    buildhtml $1 $2
}

buildhtml() {
    echo "Building html doc $1 in $2/..."
    pandoc -f markdown -t html -s $2/$1.md -o $2/$1.html
}

buildman() {
    echo "Building man page $1 in $2/..."
    pandoc -f markdown -t man -s $2/$1.md -o $2/$1
}

##
# GENERAL COMMANDS
##

buildall cbsh.1 cbsh
buildall nezumi.1 nezumi

##
# FILE FORMATS AND CONVENTIONS
##

buildall destlink.conf.5 destlink

##
# SYSTEM ADMINISTRATION COMMANDS AND DAEMONS
##

buildall deppa.8 deppa
buildall destlink.8 destlink

# fix man pages
# sed -i 's/.TH "CBSH(1)" "" "" "" ""/.TH "CBSH" "1" "cbsh-1.0" "December 2020" ""/' cbsh/cbsh.1

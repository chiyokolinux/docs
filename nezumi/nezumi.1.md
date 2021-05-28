---
title: NEZUMI(1)
date: January 2021
footer: nezumi-1.0
---

NAME
----

nezumi - a simple browser for the internet gopher protocol

SYNOPSIS
--------

**nezumi** [**URL**]

DESCRIPTION
-----------

*nezumi* is a simple browser for the internet gopher protocol, specified in RFC 1436, written in C. It can display and scroll gopher pages and plain text pages, download binary files, open HTTP hyperlinks in a browser, navigate between pages in the current session's history without re-fetching the page and much more.

OPTIONS
-------

* URL
  The URL to open at startup. Defaults to `gopher://gopher.floodgap.com/`

KEYBINDS
--------

Use the arrow keys to navigate. Press o to open a URL. Press space, enter or f to follow the link on the current line. b and p go backward in the history, n and F go forward in the history. r reloads the current page. d creates a bookmark for the current page and D lists all bookmarks. Press ^G twice and then enter to discard the current input.

CONFIGURATION
-------------

Pre-compile time configuration can be done in the `config.h` file.

**MAXURLLEN**  
    The maximum length of an URL. 512 by default.  
**HISTSIZE**  
    The maximum length of the site history. 32 by default.  

EVIRONMENT VARIABLES
--------------------

**BROWSER**  
    The program to use for opening hyperlinks and telnet sessions. If not set, xdg-open will be used.  
**HOME**  
    The path to the user's home directory. Used to determine the bookmark file path.

FILES
-----

**~/.config/nezumi-bookmarks**  
    This file stores all bookmarks.

BUGS
----

To report bugs, see https://github.com/chiyokolinux/nezumi/issues .

AUTHOR
------

Written by Emily Lucy Ishikawa, < elishikawa@jagudev.net >.

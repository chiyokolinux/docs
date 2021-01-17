---
title: CBSH(1)
date: January 2021
footer: cbsh-1.0
---

NAME
----

cbsh - chiyoko chibi shell

SYNOPSIS
--------

**cbsh** [**OPTIONS**]

DESCRIPTION
-----------

*cbsh* is a simple command language interpreter usable as an interactive shell, written in C. It is meant to precede kaigara(1). It includes a command-line editor, basic file-based word hinting and completion and a command history.

OPTIONS
-------

* -m, --multiline  
    Use multiline editing ("soft-wrap") instead of single line editing.
* -H, --no-history  
    Do not load or save the history file
* -v, --version  
    Print version and exit

CONFIGURATION
-------------

Pre-compile time configuration can be done in the `config.h` file.

**MAXCURDIRLEN**  
    The maximum length of the current path name. 4096 by default.  
**DEFAULTPROMPT**  
    The default prompt printf(3) format string. `%1$s` will be replaced with the current user's username, `%2$s` will be replaced with the system's hostname and `%3$s` will be replaced with the current path.  
**HISTSIZE**  
    The maximum length of the command history and command history file.

FILES
-----

*cbsh* will read the history from previous sessions from `~/.cbsh_history` and will save (and thus overwrite) this file on exit.
If the location of `~` cannot be determined, no history will be loaded.
If `~/.cbsh_history` does not exist on exit, the file will be created and filled with the history of the exited session.

EVIRONMENT VARIABLES
--------------------

**USER**  
    The username displayed in the prompt. If not set, emily will be used.  
**HOSTNAME**  
    The hostname displayed in the prompt. If not set, chiyoko will be used.  
**HOME**  
    The current user's home directory and startup directory. If not set, history will be disabled and / will be used.  
**PS1**  
    The prompt printf(3) format string to use. If not set, **DEFAULTPROMPT** from `config.h` will be used.

BUGS
----

To report bugs, see https://github.com/chiyokolinux/cbsh/issues .

AUTHOR
------

Written by Emily Lucy Ishikawa, < elishikawa@jagudev.net >.

---
title: DESTLINK(8)
date: July 2021
footer: destlink-1.0
---

NAME
----

destlink - A kanrisha service to provide a standardized interface for disk locations

SYNOPSIS
--------

**destlink**

DESCRIPTION
-----------

*destlink* is a simple service that provides an easy way to link standardized virtual paths with the actual place on the filesystem where the user wants there files to reside. This is useful if a package manager wants to install files that do not have a universally standardized disk location or to just give the user more power over where files actually are. It is meant to be run as a service unit by the kanrisha service manager.

CONFIGURATION
-------------

See destlink.conf(5) for syntax of the destlink.conf configuration file.

EVIRONMENT VARIABLES
--------------------

**PREFIX**  
    A path to prefix the /dest directory with

FILES
-----

**${PREFIX}/etc/kanrisha.d/available/destlink/destlink.conf**  
    This file contains the destlink configuration, in the format described in destlink.conf(5)

BUGS
----

To report bugs, see https://github.com/chiyokolinux/destlink/issues .

AUTHOR
------

Written by Emily Lucy Ishikawa, < elishikawa@jagudev.net >.

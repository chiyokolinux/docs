---
title: DESTLINK.CONF(5)
date: July 2021
footer: destlink-1.0
---

NAME
----

destlink.conf - destlink configuration file

SYNOPSIS
--------

**/etc/kanrisha.d/available/destlink/destlink.conf**

DESCRIPTION
-----------

The *destlink.conf* file is read by destlink on service start and specified every destination with interface name and path on the filesystem. It is executed by bash, so theoretically, all bash code could reside within this file to allow for very fine-grained and customized configuration of destinations based on current system state.  
By default, the file sets a $USERNAME variable which specifies the username of the user with uid 1000. This can be used on single-user systems to fetch the home directory, fuse(4) mountpoints, etc..  
The actual destinations are specified as one variable per destination, with their contents following the format `scope/name:path`.  
Valid scopes are system and user. In this implementation, scopes are arbitrary, but this shouldn't be counted on. The path MUST start with /, relative paths are NOT ALLOWED and could even pose a security risk on some systems.  
There must be a variable called **MOUNTS**. This variable provides a space-separated list of destination variable names.

FILES
-----

**${PREFIX}/etc/kanrisha.d/available/destlink/destlink.conf**

EXAMPLES
--------

These are a few example lines that might be present in a typical destlink.conf file

```
HOME="user/home:/home/tux"
ROOTHOME="system/roothome:/root"
WALLPAPERDIR="system/wallpapers:/usr/share/wallpapers"

MOUNTS="HOME ROOTHOME WALLPAPERDIR"
```

SEE ALSO
--------

destlink(8)

AUTHOR
------

Written by Emily Lucy Ishikawa, < elishikawa@jagudev.net >.

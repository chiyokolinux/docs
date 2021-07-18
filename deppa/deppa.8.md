---
title: DEPPA(8)
date: July 2021
footer: deppa-1.0
---

NAME
----

deppa - a server implementation of the gopher protocol

SYNOPSIS
--------

**deppa** [**OPTIONS**]

DESCRIPTION
-----------

*deppa*, jap. "bucktooth", is a server implementation of the gopher protocol, specified in RFC 1436, written in Go. It can serve gophermaps, directories, plain text, markdown and binary files. Markdown files are converted to gophermaps on-the-fly (very quickly!). It is very lightweight and can handle a lot of traffic on low-end hardware.

OPTIONS
-------

* -h HOSTNAME
  The hostname to listen on. Defaults to the system hostname.
* -p PORT
  The port to listen on. Defaults to 70.
* -d PATH
  The directory to serve files from . Defaults to the current directory.
* -gc-interval INTERVAL
  The number of requests after which the garbage collector should trigger. Defaults to 1024.
* -disable-gobj
  When specified, disables execution of .gobj files. Defaults to false.

BUGS
----

To report bugs, see https://github.com/chiyokolinux/deppa/issues .

AUTHOR
------

Written by Emily Lucy Ishikawa, < elishikawa@jagudev.net >.

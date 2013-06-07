DESCRIPTION
===========

Installs xvfb package and registers the daemon under init.d.

Requirements
============

* Debian, Ubuntu

ATTRIBUTES
==========

* node[:xvfb][:display] - sets the display when the daemon starts

USAGE
=====

* recipe[xvfb] - Installs the package and registers the daemon. Calls xvfb::install and xvfb::daemon.
* recipe[xvfb::install] - Installs the package
* recipe[xvfb::daemon] - Registers the service

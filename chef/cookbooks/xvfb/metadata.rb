maintainer       "Substantial Inc."
maintainer_email "shaun@substantial.com"
license          "All rights reserved"
description      "Installs/Configures xvfb"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "xvfb", "Installs xvfb and registers the daemon service"
recipe "xvfb::install", "Installs xvfb"
recipe "xvfb::daemon", "Registers the xvfb daemon under init.d"

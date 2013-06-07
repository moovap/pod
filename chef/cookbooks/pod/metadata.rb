name             'pod'
maintainer       'Tecto'
maintainer_email 'jd@fores.ee'
license          'MIT'
description      'Installs/Configures pod'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apt"
depends "build-essential"
depends "ohai"
depends "rbenv"
depends "ruby_build"
depends "runit"
depends "sudo"
depends "tar"
depends "unicorn"
depends "xvfb"
depends "yum"

# chef-rbenv-bundler

## Description

Installs the [rbenv-bundler](https://github.com/carsomyr/rbenv-bundler)
plugin for the rbenv::system install.

## Usage

Include `recipe[rbenv-bundler]` in your run_list and override the defaults
you want changed.

## Installation

### Using Librarian

[Librarian-Chef][librarian] is a bundler for your Chef cookbooks.
Include a reference to the cookbook in a [Cheffile][cheffile] and run
`librarian-chef install`. To install Librarian-Chef:

    gem install librarian
    cd chef-repo
    librarian-chef init

To reference the Git version:

    cat >> Cheffile <<END_OF_CHEFFILE
    cookbook 'rbenv-bundler',
      :git => 'https://github.com/karlfreeman/chef-rbenv-bundler', :ref => 'v0.1.0'
    END_OF_CHEFFILE
    librarian-chef install

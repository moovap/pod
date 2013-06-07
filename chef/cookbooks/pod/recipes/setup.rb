include_recipe "ruby_build"

class Chef::Recipe
    # mix in recipe helpers
    include Chef::RubyBuild::RecipeHelpers
end

node.default['rbenv']['rubies'] = [ node['pod']['ruby_version'] ]

include_recipe "apt"
include_recipe "tar"
package "build-essential"

include_recipe "xvfb"
include_recipe "pod::wkhtmltopdf"

include_recipe "rbenv::system"
include_recipe "rbenv::vagrant"

rbenv_global node['pod']['ruby_version']
rbenv_gem "bundler"
# include_recipe "rbenv-bundler"
rbenv_gem "rails"

# gem_package "ruby-shadow"

# ruby_block "require shadow library" do
#   block do
#     Gem.clear_paths  # <-- Necessary to ensure that the new library is found
#     require 'shadow' # <-- gem is 'ruby-shadow', but library is 'shadow'
#   end
# end
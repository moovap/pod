directory "#{node['rbenv']['root_path']}/plugins" do
  recursive true
end

git "#{node['rbenv']['root_path']}/plugins/bundler" do
  repository node['rbenv_bundler']['git_url']
  reference node['rbenv_bundler']['git_ref']

  if node['rbenv_bundler']['upgrade_strategy'] == "none"
    action :checkout
  else
    action :sync
  end
end

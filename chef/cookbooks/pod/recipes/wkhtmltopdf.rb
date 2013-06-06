case node['platform_family']
when 'debian'
  packages = %w(libxrender1 libxext6 libfontconfig1)
when 'redhat'
  packages = %w(libXrender libXext urw-fonts openssl-devel fontconfig-devel)
end

packages.each do |pkg|
  package pkg do
    action :install
  end
end

unless File.exist?("/usr/local/bin/wkhtmltopdf")
  arch = node['kernel']['machine'] =~ /x86_64/ ? "amd64" : "i386"

  tar_extract "http://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-0.11.0_rc1-static-#{arch}.tar.bz2" do
    target_dir '/usr/local/bin'
  end

  ruby_block "Rename wkhtmltopdf bin" do
    block do
      ::File.rename("/usr/local/bin/wkhtmltopdf-#{arch}","/usr/local/bin/wkhtmltopdf")
    end
  end
end
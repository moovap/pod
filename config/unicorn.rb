app_name = "pod"
root = "/home/deployer/apps/#{app_name}/current"
working_directory root
pid "/var/run/unicorn/unicorn_#{app_name}.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.#{app_name}.sock"
worker_processes 2
timeout 30
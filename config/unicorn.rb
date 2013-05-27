config = Psych.load(File.open('config/server.yaml'))
user = confif['server']['user']
app_name = "pod"
root = "/home/#{user}/apps/#{app_name}/current"
working_directory root
pid "/var/run/unicorn/unicorn_#{app_name}.pid"
stderr_path "/var/run/unicorn/log/unicorn_#{app_name}.log"
stdout_path "/var/run/unicorn/log/unicorn_#{app_name}.log"

listen "/tmp/unicorn.#{app_name}.sock"
worker_processes 2
timeout 30
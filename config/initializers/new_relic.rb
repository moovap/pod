# Ensure the agent is started using Unicorn.
# This is needed when using Unicorn and preload_app is not set to true.
# See https://newrelic.com/docs/ruby/no-data-with-unicorn
if defined? NewRelic
  class ActionController::API
    include NewRelic::Agent::Instrumentation::ControllerInstrumentation
    include NewRelic::Agent::Instrumentation::Rails3::ActionController
  end
end
if defined? Unicorn
  ::NewRelic::Agent.manual_start()
  ::NewRelic::Agent.after_fork(:force_reconnect => true)
end
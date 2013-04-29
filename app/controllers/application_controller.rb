class ApplicationController < ActionController::Base
  include NewRelic::Agent::Instrumentation::ControllerInstrumentation
  include NewRelic::Agent::Instrumentation::Rails3::ActionController
  protect_from_forgery
end

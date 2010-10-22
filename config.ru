# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run RailsMongoDbId::Application
#config.action_mailer.default_url_options = { :host => 'localhost:3000' }



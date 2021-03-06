require_relative "production"
Rails.application.routes.default_url_options[:host] = ENV.fetch("APPLICATION_HOST")

Rails.application.configure do
  config.log_level = :debug
  config.action_mailer.default_url_options = { host: ENV.fetch("APPLICATION_HOST") }
end

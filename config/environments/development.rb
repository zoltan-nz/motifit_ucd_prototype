MotifitUcdPrototype::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  #BetterErrors on remote machine browser
  BetterErrors::Middleware.allow_ip! '192.0.0.0/8'

  #config.middleware.insert_after(ActionDispatch::Static, Rack::LiveReload)
  #
  ## ...or, change some options...
  #
  #config.middleware.insert_before(
  #    Rack::Lock, Rack::LiveReload,
  #    :min_delay => 100,
  #    :max_delay => 10000,
  #    :port => 56789,
  #    :host => 'localhost',
  #    :ignore => [ %r{dont/modify\.html$} ]
  #)

end

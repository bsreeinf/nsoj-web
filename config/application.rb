require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nsoj
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Load routes from config/routes folder
    # NOTE: Order of route matters! It's better to not have routing conflicts, but if you have them,
    # make sure to load routes in the correct order.
    # In our case we must prepend all separate routes before main routes.rb
    Dir[Rails.root.join('config/routes/**/*.rb')].each { |f| config.paths["config/routes.rb"].unshift(f) }

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Asia/Kolkata'
    config.middleware.use Rack::Deflater

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    # config.autoload_paths << Rails.root.join('lib')
    # config.active_record.raise_in_transactional_callbacks = true

    ActionMailer::Base.smtp_settings = {
        :address        => 'smtp.gmail.com',
        :domain         => 'mail.gmail.com',
        :port           => '587',
        :authentication => :plain,
        :user_name      => Figaro.env.em_primary_id,
        :password       => Figaro.env.em_primary_pwd,        
        :enable_starttls_auto => true    
    }
  end
end

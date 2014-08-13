require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'rails/all'
require 'csv'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PrimFrontEnd
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.assets.paths << "#{Rails.root}/vendor/assets/simplemap/stylesheets"
    config.assets.paths << "#{Rails.root}/vendor/assets/simplemap/javascripts"
    config.assets.paths << "#{Rails.root}/vendor/assets/simplemap/fonts"

    config.assets.paths << "#{Rails.root}/vendor/assets/bootstagram/img"
    config.assets.paths << "#{Rails.root}/vendor/assets/bootstagram/"
    config.assets.paths << "#{Rails.root}/vendor/assets/tempus/"

    config.generators do |generator|
      generator.test_framework :rspec,
                               :fixtures => true,
                               :view_specs => false,
                               :helper_specs => false,
                               :routing_specs => false,
                               :controller_specs => true,
                               :request_specs => true
      generator.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
  end
end

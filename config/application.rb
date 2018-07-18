require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CpgBooks
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = :en
    I18n.enforce_available_locales = true

    # Set Time.zone default to the specified zone and make Active Record auto-convert to
    # this zone. Run "rake -D time" or "rails time:zones" for a list of tasks for finding time zone names.
    # Default is UTC.
    config.time_zone = 'Eastern Time (US & Canada)'

    config.generators do |g|
      # See      :: http://stackoverflow.com/questions/8722195/how-can-i-completely-disable-coffeescript-in-a-rails-3-1-app
      # See more :: http://stackoverflow.com/questions/4630911/override-default-scaffold-generator-in-rails-3
      # g.scaffold_controller = 'd1_scaffold_controller'
      g.javascript_engine :js

      # See :: https://stackoverflow.com/a/42503972/2334082
      # g.orm :active_record, primary_key_type: :uuid
    end
  end
end

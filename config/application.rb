# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TheOffice
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.exceptions_app = routes
    config.encoding = 'utf-8'
    config.i18n.default_locale = 'es'
    config.i18n.locale = 'es'
    config.i18n.available_locales = %w[es pt en]
    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.{rb,yml}').to_s]
    config.i18n.fallbacks = false

    # Marginalia::Comment.components = [:controller_with_namespace, :action, :job, :line]
  end
end

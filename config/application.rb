require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module TheLibrarian
  class Application < Rails::Application
    config.i18n.default_locale = :es
    config.i18n.locale = :es
  end
end

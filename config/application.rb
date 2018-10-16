require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Kusuki
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators.system_tests = nil
    config.active_record.default_timezone = :local
    config.i18n.load_path += Dir[Rails.root.join('config','locales',
                                                 '**','*.yml')]
    config.i18n.default_locale = :'pt-BR'
    config.i18n.locale = :'pt-BR'
    config.time_zone = 'Brasilia'
  end
end

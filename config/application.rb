require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Labs
  class Application < Rails::Application
  	config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # Initialize configuration defaults for originally generated Rails version.
    config.assets.precompile += %w(*.js)
    config.load_defaults 5.1
    config.serve_static_assets = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

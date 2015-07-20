require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module TravelMentor
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.assets.enabled = true
    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
    end
    config.autoload_paths << "#{Rails.root}/lib"
  end
end

require 'activo-rails/helper'

module ActivoRails
  class Engine < Rails::Engine
    config.mount_at = '/activo/'
    ActionController::Base.helper ActivoRails::Helper
    
    initializer "static assets" do |app|
      app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
    end
  end
end

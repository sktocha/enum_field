# encoding: utf-8
require 'rails'
require 'enum_field'

module EnumField
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send(:extend, EnumField::EnumeratedAttribute)
      end
    end
  end
end

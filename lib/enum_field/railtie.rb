# encoding: utf-8
require 'enum_field'

module EnumField
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      initializer "enum_field.initialization" do
        ActiveSupport.on_load :active_record do
          EnumField::Railtie.insert
        end  
      end
    end
  end

  class Railtie
    def self.insert      
      Module.send(:include, EnumField::DefineEnum)
      ActiveRecord::Base.send(:extend, EnumField::EnumeratedAttribute)
    end
  end
end

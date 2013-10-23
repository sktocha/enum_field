# encoding: utf-8
module EnumField
  autoload :DefineEnum, 'enum_field/define_enum'
  autoload :Builder, 'enum_field/builder'
  autoload :EnumeratedAttribute, 'enum_field/enumerated_attribute'
  autoload :Version, 'enum_field/version'
  
  class BadId < StandardError
    def initialize(repeated_id)
      @repeated_id = repeated_id
    end
    attr_reader :repeated_id
  end

  class RepeatedId < StandardError; end
  class InvalidId < StandardError; end
  class InvalidOptions < StandardError; end
  class ObjectNotFound < StandardError; end
end

require 'enum_field/railtie' if defined?(Rails)

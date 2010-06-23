# encoding: utf-8
module EnumField
  module DefineEnum
    def define_enum(&block)
      @enum_builder ||= EnumField::Builder.new(self)
      yield @enum_builder

      [:all, :names, :find_by_id, :find, :first, :last].each do |method|
        define_method(method) do |*args, &block|
          @enum_builder.send(method, *args, &block)
        end
      end
    end
  end
end

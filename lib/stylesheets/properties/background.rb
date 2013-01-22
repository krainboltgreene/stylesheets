require_relative "shared/color"

module StyleSheets
  class Properties
    class Background < Group
      PROPERTY_NAMES = [:color]

      PROPERTY_NAMES.each &method(:attr_writer)

      def color(value, options = {})
        @color = Color.new value, options.merge(prefix: "background")
      end

      def empty?
        values_for_properties.all? &:nil?
      end

      def to_s
        values_for_properties.map(&:to_s)
      end

      private

      def values_for_properties
        PROPERTY_NAMES.map { |name| instance_variable_get :"@#{name}" }
      end
    end
  end
end

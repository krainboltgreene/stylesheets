require_relative "shared/color"

module StyleSheets
  class Properties
    class Background < Group
      @@property_names = [:color]

      @@property_names.each &method(:attr_writer)

      def color(value, options = {})
        @color = Color.new value, options.merge(prefix: "background", owner: self)
      end
    end
  end
end

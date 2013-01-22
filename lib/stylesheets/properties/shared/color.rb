module StyleSheets
  class Properties
    class Color
      include Whitespace

      attr_accessor :color, :options

      def initialize(color, options = {})
        self.color = color
        self.options = options
      end

      def to_s
        "#{indent}#{prefix}color: #{color};"
      end

      private

      def prefix
        if options[:prefix]
          "#{options[:prefix]}-"
        end
      end
    end
  end
end

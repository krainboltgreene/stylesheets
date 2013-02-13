module StyleSheets
  class Properties
    class Color
      include Whitespace

      attr_accessor :color, :options

      def initialize(color, options = {})
        self.color = color
        self.compress = options.delete(:compress)
        self.options = options
      end

      def to_s
        "#{indent}#{prefix}color:#{space}#{color};"
      end

      private

      def prefix
        "#{options[:prefix]}-" if options[:prefix]
      end
    end
  end
end

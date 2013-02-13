module StyleSheets
  class Style
    include Whitespace
    extend Forwardable

    DEFAULTS = {
      compress: false
    }

    attr_accessor :path, :options, :properties

    def_delegator :properties, :text
    def_delegator :properties, :background

    def initialize(path, options = {}, &block)
      self.path = path
      self.options = DEFAULTS.dup.merge! options
      self.properties = Properties.new
      self.compress = self.options[:compress]
      instance_eval &block if block_given?
    end

    def to_s
      "#{path}#{space}\{#{newline}#{properties}#{newline}\}"
    end

    def compress
      properties.empty? || @compress
    end
  end
end

module StyleSheets
  class Style
    include Whitespace
    extend Forwardable

    attr_accessor :path, :options, :properties

    def_delegator :properties, :text
    def_delegator :properties, :background

    def initialize(path, options = {}, &block)
      self.path = path
      self.options = options
      self.properties = Properties.new
      instance_eval &block if block_given?
    end

    def to_s
      "#{path}#{space(whitespace?)}{#{newline(whitespace?)}#{properties}#{newline(whitespace?)}}"
    end

    private

    def whitespace?
      options[:compress] || true
    end
  end
end

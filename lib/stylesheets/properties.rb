require_relative "properties/group"
require_relative "properties/text"
require_relative "properties/background"

module StyleSheets
  class Properties
    include Whitespace
    PROPERTY_GROUPS = [:text, :background]
    PROPERTY_GROUPS.each &method(:attr_accessor)

    def initialize(options = {})
      self.compress = options.delete(:compress)
      self.text = Text.new
      self.background = Background.new
    end

    def empty?
      property_group_values.all?(&:empty?)
    end

    def compress
      @compress || empty?
    end

    def to_s
      render_properties.join newline
    end

    private

    def property_group_values
      PROPERTY_GROUPS.map(&method(:send))
    end

    def render_properties
      property_group_values.reject(&:empty?).map &:to_s
    end
  end
end

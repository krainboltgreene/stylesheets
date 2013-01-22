require_relative "properties/group"
require_relative "properties/text"
require_relative "properties/background"

module StyleSheets
  class Properties
    include Whitespace

    PROPERTY_GROUPS = [:text, :background]

    PROPERTY_GROUPS.each &method(:attr_accessor)

    def initialize
      self.text = Text.new
      self.background = Background.new
    end

    def empty?
      property_group_values.all?(&:empty?)
    end

    def to_s
      unless empty?
        render_properties
      else
        ""
      end
    end

    private

    def property_group_values
      PROPERTY_GROUPS.map(&method(:send))
    end

    def render_properties
      property_group_values.map(&:to_s).join newline(!empty?)
    end
  end
end

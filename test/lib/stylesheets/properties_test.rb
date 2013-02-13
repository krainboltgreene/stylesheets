require 'minitest/autorun'
require 'helper'

class TestStyleSheetsProperties < MiniTest::Unit::TestCase
  def setup
    @properties = StyleSheets::Properties.new(StyleSheets::Style.new('foo'))
    @properties.text.color "red"
  end

  # def render_properties
  #   property_group_values.map(&:to_s)
  # end
  def test_render_properties_with_property
    expected = [["  color: red;"]]
    actual = @properties.send(:render_properties)
    assert_equal expected, actual
  end

  def test_render_properties_with_property_compress
    @properties.parent.compress = true
    expected = [["color:red;"]]
    actual = @properties.send(:render_properties)
    assert_equal expected, actual
  end
end

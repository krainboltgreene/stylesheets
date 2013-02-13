require 'minitest/autorun'
require 'helper'

class TestStyleSheetsStyle < MiniTest::Unit::TestCase
  def setup
    @path = "article#accounts header h1.loud"
    @style = StyleSheets::Style.new @path
    @defaults = { compress: false }
  end

  def test_to_s_without_properties
    expected = "#{@path}{}"
    actual = @style.to_s
    assert_equal expected, actual
  end

  def test_to_s_with_property
    @style.properties.text.color "red"
    expected = "#{@path} \{\n  color: red;\n\}"
    actual = @style.to_s
    assert_equal expected, actual
  end

  def test_to_s_with_properties
    @style.properties.text.color "red"
    @style.properties.background.color "blue"
    expected = "#{@path} \{\n  color: red;\n  background-color: blue;\n\}"
    actual = @style.to_s
    assert_equal expected, actual
  end

  def test_to_s_with_property_compressed
    @style.compress = true
    @style.properties.text.color "red"
    expected = "#{@path}\{color:red;\}"
    actual = @style.to_s
    assert_equal expected, actual
  end

  def test_to_s_with_properties_compressed
    @style.compress = true
    @style.properties.text.color "red"
    @style.properties.background.color "blue"
    expected = "#{@path}\{color:red;background-color:blue;\}"
    actual = @style.to_s
    assert_equal expected, actual
  end

  def test_default_compress
    @style.properties.text.color "red"
    expected = @defaults[:compress]
    actual = @style.compress
    assert_equal expected, actual
  end
end

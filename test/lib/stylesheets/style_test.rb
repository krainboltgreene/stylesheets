require 'minitest/autorun'
require 'helper'

class TestStyleSheetsStyle < MiniTest::Unit::TestCase
  def setup
    @path = "article#accounts header h1.loud"
    @style = StyleSheets::Style.new @path
  end

  def test_to_s
    expected = "#{@path} {}"
    actual = @style.to_s
    assert_equal expected, actual
  end
end

require 'minitest/autorun'
require 'helper'

class WhiteSpaceTestObject
  include StyleSheets::Whitespace
end

class TestStyleSheetsWhitespace < MiniTest::Unit::TestCase
  def setup
  	@object = WhiteSpaceTestObject.new
    @default_newline_character = StyleSheets::Whitespace::DEFAULT_NEWLINE_CHARACTER
    @default_indent_character = StyleSheets::Whitespace::DEFAULT_INDENTATION_CHARACTER
    @default_space_character = " "
  end


  # def whitespace(compress = true, with_whitespace)
  #   compress ? with_whitespace : ""
  # end
  def test_newline
    expected = @default_newline_character
    actual = @object.newline
    assert_equal expected, actual
  end

  def test_newline_compress
    expected = ""
    actual = @object.newline(true)
    assert_equal expected, actual
  end

  # def indent(compress = false)
  #   whitespace compress, DEFAULT_INDENTATION_CHARACTER * DEFAULT_INDENTATION_COUNT
  # end
  def test_indent
    expected = @default_indent_character
    actual = @object.indent
    assert_equal expected, actual
  end

  def test_indent_compress
    expected = ""
    actual = @object.indent(true)
    assert_equal expected, actual
  end

  # def space(compress = false)
  #   whitespace compress, " "
  # end
  def test_space
    expected = @default_space_character
    actual = @object.space
    assert_equal expected, actual
  end

  def test_space_compress
    expected = ""
    actual = @object.space(true)
    assert_equal expected, actual
  end
end

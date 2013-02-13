require 'minitest/autorun'
require 'helper'

class WhitespaceTestObject
  include StyleSheets::Whitespace
end

class TestStyleSheetsWhitespace < MiniTest::Unit::TestCase
  def setup
  	@uncompressed = WhitespaceTestObject.new
    @compressed = @uncompressed.dup.tap { |o| o.compress = true }
    @newline_character = StyleSheets::Whitespace::DEFAULT_NEWLINE_CHARACTER
    @indent_character = StyleSheets::Whitespace::DEFAULT_INDENTATION_CHARACTER
    @space_character = " "
  end

  # def whitespace(with_whitespace)
  #   compress ? with_whitespace : ""
  # end
  def test_newline
    expected = @newline_character
    actual = @uncompressed.newline
    assert_equal expected, actual
  end

  def test_newline_compress
    expected = ""
    actual = @compressed.newline
    assert_equal expected, actual
  end

  # def indent
  #   whitespace DEFAULT_INDENTATION_CHARACTER * DEFAULT_INDENTATION_COUNT
  # end
  def test_indent
    expected = @indent_character
    actual = @uncompressed.indent
    assert_equal expected, actual
  end

  def test_indent_compress
    expected = ""
    actual = @compressed.indent
    assert_equal expected, actual
  end

  # def space
  #   whitespace " "
  # end
  def test_space
    expected = @space_character
    actual = @uncompressed.space
    assert_equal expected, actual
  end

  def test_space_compress
    expected = ""
    actual = @compressed.space
    assert_equal expected, actual
  end
end

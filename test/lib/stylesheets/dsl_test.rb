# require 'minitest/autorun'
# require 'helper'
# require 'stylesheets/main'

# class TestDSL < MiniTest::Unit::TestCase
#   def setup
#     @path = "article#accounts header h1.loud"
#   end

#   def test_style
#     expected = "#{@path} {\n  color: red;\n}"
#     actual = style(@path) { text.color(:red) }.to_s
#     assert_equal expected, actual

#     expected = "#{@path} {\n  color: red;\n  background-color: #444;\n}"
#     actual = style @path do
#       text.color :red
#       background.color "#444"
#     end.to_s
#     assert_equal expected, actual
#   end
# end

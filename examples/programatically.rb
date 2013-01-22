require 'pry'
require 'stylesheets'

style = StyleSheets::Style.new("article header h1")
style.properties.text.color "red"
puts style

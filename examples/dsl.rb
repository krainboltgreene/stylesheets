require 'pry'
require 'stylesheets/main'

sheets = style "article header h1" do
  text.color :red
  background.color "#444"
end

puts sheets

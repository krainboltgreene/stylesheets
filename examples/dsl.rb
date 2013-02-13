require 'pry'
require 'stylesheets/main'

style "article header h1" do
  text do
    family "Helvetica", "Times New Roman"
    color :red
  end
  background.color "#444"
end

puts sheets

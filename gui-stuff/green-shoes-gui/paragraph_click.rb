
require 'green_shoes'

Shoes.app do
  @paragraph = para "This is a paragraph."
  @button = button("Change it") do
    @paragraph.text = "Now it says something else."
  end
end

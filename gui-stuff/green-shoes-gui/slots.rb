
require 'green_shoes'

Shoes.app do
  stack do
    para "Stack Item 1", width: 100
    button "Stack Item 2"
  end

  flow do
    para "Flow Item 1", width: 100
    button "Flow Item 2"
  end
end

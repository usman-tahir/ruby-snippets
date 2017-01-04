
Shoes.app do
  stack width: 200, height: 200, scroll: true do
    background "#dfa"
    100.times do |i|
      para "Paragraph ##{i + 1}"
    end
  end
end

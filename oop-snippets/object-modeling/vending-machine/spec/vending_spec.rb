require "../lib/Vending"
require "../lib/Item"

describe VendingMachine do
  before do
    @vending_machine = VendingMachine.new
    @item = Item.new("Fizzy Pop", "It Fizzles and Sizzles!", 0.99)
  end

  it "has default attribute definitions set" do
    expect(@vending_machine.description).to eql("")
    expect(@vending_machine.inventory).to eql({})
    expect(@vending_machine.item_count).to eql(0)
  end

  it "can set the description of the Vending Machine" do
    @vending_machine.description = "Soda Vending Machine"
    expect(@vending_machine.description).to eql("Soda Vending Machine")
  end

  it "can add an item to the Vending Machine's inventory" do
    entry = @item.name.to_sym
    @vending_machine.inventory[entry] = @item
    expect(@vending_machine.inventory[entry]).to eql(@item)
  end
end

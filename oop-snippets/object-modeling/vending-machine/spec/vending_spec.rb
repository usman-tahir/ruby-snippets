require "../lib/Vending"

describe VendingMachine do
  before do
    @vending_machine = VendingMachine.new
  end

  it "has default attribute definitions set" do
    expect(@vending_machine.description).to eql("")
    expect(@vending_machine.inventory).to be(nil)
    expect(@vending_machine.item_count).to be(0)
  end
end

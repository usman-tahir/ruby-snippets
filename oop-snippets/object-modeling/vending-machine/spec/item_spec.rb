require "../lib/Item"

describe Item do
  before do
    # Default item
    @item = Item.new
  end

  it "has default attribute definitions set" do
    expect(@item.name).to eql("")
    expect(@item.description).to eql("")
    expect(@item.cost).to eql(0.00)
  end
end

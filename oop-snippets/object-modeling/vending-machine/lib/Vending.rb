
class VendingMachine
  attr_accessor :description, :inventory, :item_count

  def initialize(description = "", inventory = {}, item_count = 0)
    @description = description
    @inventory = {}
    @item_count = item_count
  end

end

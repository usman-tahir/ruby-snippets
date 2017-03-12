
class Item
  attr_accessor :name, :description, :cost

  def initialize(name = "", description = "", cost = 0.00)
    @name = name
    @description = description
    @cost = cost
  end
  
end

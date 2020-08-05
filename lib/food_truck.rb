class FoodTruck

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    in_stock = 0
    if inventory.any?(item) == false
      in_stock = 0
    end
    in_stock
  end





end

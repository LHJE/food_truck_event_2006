require 'pry'

class FoodTruck

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    in_stock = 0
    if inventory.keys.any?(item) == false
      in_stock = 0
    else
      in_stock = inventory[item]
    end
    in_stock
  end

  def stock(item, quantity)
    inventory[item] = quantity
  end



end

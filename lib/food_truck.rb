require 'pry'
require './lib/item'
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
    if inventory.keys.any?(item) == false
      inventory[item] = quantity
    else
      inventory[item] += quantity
    end
  end

  def potential_revenue
    revenue = inventory.map do |item|
      item[0].price * item[1]
    end
    revenue.sum
  end

end

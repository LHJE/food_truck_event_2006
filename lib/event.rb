require 'pry'

class Event

  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    food_trucks << food_truck
  end

  def food_truck_names
    names = food_trucks.map do |food_truck|
      food_truck.name
    end
    names
  end

  def food_trucks_that_sell(item1)
    trucks = food_trucks.map do |food_truck|
      if food_truck.inventory.include?(item1)
        food_truck
      end
    end
    trucks.compact
  end


  def total_inventory
    total_inventory = Hash.new do |inventory, item|
      inventory[item] = {quantity: 0, food_trucks: []}
    end
    food_trucks.each do |food_truck|
      food_truck.inventory.each do |this_item|
        total_inventory[this_item[0]][:quantity] += this_item[1]
        total_inventory[this_item[0]][:food_trucks] << food_truck
      end
    end
    total_inventory
  end

  def overstocked_items
    overstocked_items = total_inventory.map do |inventory|
      if inventory[1][:quantity] > 50 && inventory[1][:food_trucks].count > 1
        inventory[0]
      end
    end
    overstocked_items.compact.reduce
  end









end

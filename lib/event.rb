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

end

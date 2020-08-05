require 'minitest/autorun'
require 'minitest/pride'

class FoodTruckTest < Minitest::Test

  def test_it_exists
    food_truck = FoodTruck.new(name)

    assert_instance_of FoodTruck, food_truck

  end









end

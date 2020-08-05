require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new(attributes)

    assert_instance_of Item, item

  end









end

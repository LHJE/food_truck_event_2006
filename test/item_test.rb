require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def test_it_exists
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    assert_instance_of Item, item1
  end

  def test_it_has_attributes
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})


    assert_equal 'Peach Pie (Slice)', item1.name
    assert_equal 3.75, item.price
  end








end

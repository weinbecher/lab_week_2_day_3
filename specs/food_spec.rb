require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")
require_relative("../pub.rb")


class FoodTest < Minitest::Test
  def setup()
    @food = Food.new("chips", 5, 50)
  end


  def test_food_has_name
    assert_equal("chips", @food.name)
  end

  def test_drink_has_price
    assert_equal(5, @food.price)
  end

  def test_alcohol_level
    assert_equal(50, @food.rejuvenation_level)
  end





end

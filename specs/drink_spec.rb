require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../pub.rb")


class DrinkTest < Minitest::Test
  def setup()
    @drink1 = Drink.new("Tequila", 3)
    @drink2 = Drink.new("Vodka", 2)
    @drink3 = Drink.new("Rum", 4)
    @drink4 = Drink.new("Whiskey", 5)
  end


  def test_drink_has_name
    assert_equal("Tequila", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(2, @drink2.price)
  end





end

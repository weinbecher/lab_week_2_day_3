require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < Minitest::Test

def setup()
  @pub = Pub.new("Sandys", 1000)
  @drink1 = Drink.new("Tequila", 3)
  @drink2 = Drink.new("Vodka", 2)
  @drink3 = Drink.new("Rum", 4)
  @drink4 = Drink.new("Whiskey", 5)
  @customer = Customer.new("Sophia", 50)

end

def test_pub_has_name
  assert_equal("Sandys", @pub.name)
end

def test_pub_has_money
  assert_equal(1000, @pub.till)
end

def test_pub_stock_count_start_0
  assert_equal(0, @pub.stock_count)
end

def test_add_drinks_to_alcohol
  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  assert_equal(2, @pub.stock_count)
end

def test_sell_drink_to_customer
  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  @pub.sell_drink(@drink1)
  assert_equal(1, @pub.stock_count)
end

def test_add_money_to_till
  @pub.add_money_to_till(@drink1)
  assert_equal(1003, @pub.till)
end


end

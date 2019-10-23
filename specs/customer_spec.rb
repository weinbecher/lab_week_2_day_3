require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class CustomerTest < Minitest::Test

def setup()
  @customer = Customer.new("Sophia", 50)
  @drink1 = Drink.new("Tequila", 3)
  @drink2 = Drink.new("Vodka", 2)
  @drink3 = Drink.new("Rum", 4)
  @drink4 = Drink.new("Whiskey", 5)
  @pub = Pub.new("Sandys", 1000)

  @pub.add_drink(@drink1)
  @pub.add_drink(@drink2)
  @pub.add_drink(@drink3)
  @pub.add_drink(@drink4)
end


def test_customer_has_name
  assert_equal("Sophia", @customer.name)
end

def test_customer_has_money
  assert_equal(50, @customer.wallet)
end

def test_customer_drinks_starts_empty
  assert_equal(0, @customer.drinks_count)
end

def test_customer_get_drink
  @customer.get_drink(@pub, @drink1)
  assert_equal(1, @customer.drinks_count)
end

#
# def test_customer_spend_money
#   @customer.spend_money(@drink1)
#   assert_equal(47, @customer.wallet)
# end






end

require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")
require_relative("../food")


class PubTest < Minitest::Test

  def setup()
    @pub = Pub.new("Sandys", 1000)
    @drink1 = Drink.new("Tequila", 3, 50)
    @drink2 = Drink.new("Vodka", 2, 40)
    @drink3 = Drink.new("Rum", 4, 30)
    @drink4 = Drink.new("Whiskey", 5, 50)
    @food = Food.new("chips", 5, 50)
    @customer = Customer.new("Sophia", 50, 26, 0)

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

  def test_check_legal_age
    assert_equal(true, @pub.check_legal_age(@customer))
  end

  def test_check_drunk_level
    @customer.had_drink(@drink1)
    @customer.had_drink(@drink2)
    assert_equal(true, @pub.check_drunk_level(@customer))
  end

  def test_check_drunk_level__not_selling
    @customer.had_drink(@drink1)
    @customer.had_drink(@drink2)
    @customer.had_drink(@drink1)
    @customer.had_drink(@drink1)
    @customer.had_drink(@drink1)
    assert_equal("not selling", @pub.check_drunk_level(@customer))
  end

  def test_stock_detail
    @pub.add_stock(@drink1)
    @pub.add_stock(@drink1)
    assert_equal(2, @pub.stock_detail(@drink1))
  end

  def test_stock_value
    @pub.add_stock(@drink1)
    @pub.add_stock(@drink1)
    # @pub.add_stock(@drink2)
    assert_equal(6,@pub.stock_value)
  end


end

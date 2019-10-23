class Pub

  attr_reader :name, :till, :alcohol, :stock

  def initialize(name, till)
    @name = name
    @till = till
    @alcohol = []
    @stock = Hash.new(0)
    # Hash[(key=>value)*]

  end

  def stock_count
    return @alcohol.count
  end


  def add_drink(drink)
    return @alcohol.push(drink)
  end


  def sell_drink(drink)
    @alcohol.delete(drink)
  end

  def add_money_to_till(drink)
    @till += drink.price
  end

  def check_legal_age(customer)

    if customer.age >= 18
      return true
    else
       return "not allowed"
    end

  end

  def check_drunk_level(customer)

    if customer.drunkenness <= 200
      return true
    else
       return "not selling"
    end

  end


  # Pub can have a stock (maybe a Hash?) to keep track the amount of drinks available (Hard! Might need to change the drinks array to a drinks hash)

  def add_stock(drink)
    if @stock[drink] == nil
      @stock[drink] = 1
    else
      @stock[drink] += 1
    end
  end

  def stock_detail(drink)
    @stock[drink]
  end



# Pub can have a stock_value method to check the total value of its drinks
  def stock_value
    stock_value = 0
    for drink in @stock.keys
      stock_value += drink.price * @stock[drink]
    end
    return stock_value
  end




end

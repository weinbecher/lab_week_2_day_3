class Pub

attr_reader :name, :till, :alcohol

def initialize(name, till)
  @name = name
  @till = till
  @alcohol = {}
  # Hash[(key=>value)*]

end

def stock_count
  @alcohol.count
end

def add_drink(drink)
  if @alcohol[drink] == nil
    @alcohol[drink] = 1
  else
    @alcohol[drink] += 1
  end
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

def pub.stock_detail(item)

  for drink in pub.alcohol
    if item == drink
    return item.count
    # you cant count item because item is not an array
    end
  end

end


# Pub can have a stock_value method to check the total value of its drinks

end

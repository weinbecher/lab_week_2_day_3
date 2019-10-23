class Pub

attr_reader :name, :till, :alcohol

def initialize(name, till)
  @name = name
  @till = till
  @alcohol = []
end

def stock_count
  @alcohol.count
end

def add_drink(drink)
  @alcohol.push(drink)
end

def sell_drink(drink)
  @alcohol.delete(drink)
end

def add_money_to_till(drink)
  @till += drink.price
end







end

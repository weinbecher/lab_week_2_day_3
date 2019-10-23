class Customer

attr_reader :name, :wallet, :drinks

def initialize(name, wallet)
  @name = name
  @wallet = wallet
  @drinks = []
end

def drinks_count
  return @drinks.count
end

def get_drink(pub, drink)

  if pub.alcohol.include?(drink)
    @drinks.push(drink)
  end

end

# def spend_money(drink)
#   @wallet -= drink.price
# end





end

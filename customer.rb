class Customer

  attr_reader :name, :wallet, :drinks, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
    @drinks = []
  end

  def drinks_count
    return @drinks.count
  end


  def spend_money(drink)
    @wallet -= drink.price
  end


  def get_drink(pub, drink)

    if pub.alcohol.include?(drink)
      @drinks.push(drink)
      spend_money(drink)
      pub.add_money_to_till(drink)
    end
  end


  def had_drink(drink)
     @drunkenness += drink.alcohol_level
  end

  def recover(food)
     @drunkenness -= food.rejuvenation_level
  end




end

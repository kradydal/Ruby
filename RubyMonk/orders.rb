class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    sum_hash = Hash.new(0)
    orders.each do |order|
      order.each do |key, value|
        sum_hash[key] += value
      end
    end
    recipe = 0
    sum_hash.each do |key, value|
      recipe += @menu[key] * value
    end
    recipe
  end
end

require_relative("product")
class Cart
  @@cart = []


  def self.add(name, base_price, tax_rate = 1.15)
    new_product = Product.new(name, base_price, tax_rate)
    @@cart << new_product
    return new_product
  end

  def self.show
    @@cart
  end

  def self.remove(product)
    @@cart.delete(product)
  end

  def self.total_cost
    sum = 0
    @@cart.each do |product|
      sum += product.base_price
    end
    return sum
  end

  def self.total_cost_plus_tax
    sum = 0
    @@cart.each do |product|
      sum += product.total_price
    end
    return sum
  end

end

item1 = Cart.add("Milk", 4.25, 1.15)
item2 = Cart.add("Tomato", 5.15, 1.15)
item3 = Cart.add("Avocado", 4.5, 1.15)

puts Cart.show.inspect

Cart.remove(item1)

puts Cart.show.inspect

puts "The total cost is #{Cart.total_cost}"
puts "The total cost including tax is #{Cart.total_cost_plus_tax}"

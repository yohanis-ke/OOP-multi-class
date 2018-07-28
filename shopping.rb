require_relative 'product'


# bread = Product.new('bread', '1.25', 0)
# milk = Product.new('meat', 15.0 , 0.13)

milk = Product.create('Milk', '4.55', '0.13')

# puts bread.total_befor
puts milk.show_product.inspect
puts milk.add_product
# puts milk.show_product.inspect
# puts milk.reomove_item
# puts milk.show_product.inspect
puts milk.total_befor

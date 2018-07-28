class Product

  @@product=[]
  @@shopping_cart=[]
  @@tax_rate=0.13

    def initialize(name, base_price, tax_rate)
      @name = name
      @base_price = base_price
      @tax_rate = tax_rate
    end

    def self.create(name, base_price, tax_rate)
      new_product=self.new(name, base_price, tax_rate)
       @@product<<new_product
       return new_product
    end

    def show_product
      @@product
    end

    def total_price
        @total_price=0
       @@shopping_cart.each do |a|
         @total_price= a.base_price + item.tax_rate
       end
      return @total_price
    end

    def add_product
      @@shopping_cart<< self
      @@product.delete(self)
    end

    def reomove_item
      @@shopping_cart.delete(self)
      return @@shopping_cart
    end

    def total_befor
         @before_tax = 0
       @@shopping_cart.each do |a|
         @befor_tax+= a.base_price
       end
      return @before_tax
    end

    def total_after
      @after_tax = 0
        @@shopping_cart.each do |a|
          @after_tax = a.base_price + (a.base_price * @@tax_rate)
        end
      return @after_tax
    end

end

class Product
  attr_accessor :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def to_s
    "#{@name}: $#{@price}\n#{@description}"
  end
end

class ShoppingCart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product)
    @items << product
    puts "Item '#{product.name}' added to the cart."
  end

  def total_price
    @items.map(&:price).sum
  end
end

# Example usage
product1 = Product.new("Ruby T-shirt", 20, "High-quality cotton T-shirt with Ruby logo.")
product2 = Product.new("Rails Mug", 15, "Ceramic mug with Rails logo.")

shopping_cart = ShoppingCart.new
shopping_cart.add_item(product1)
shopping_cart.add_item(product2)

puts "Total Price: $#{shopping_cart.total_price}"

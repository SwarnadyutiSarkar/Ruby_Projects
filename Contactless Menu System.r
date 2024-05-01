class MenuItem
  attr_accessor :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def to_s
    "#{@name}: $#{@price} - #{@description}"
  end
end

class Menu
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
    puts "Item '#{item.name}' has been added to the menu."
  end

  def view_menu
    if @items.empty?
      puts "Menu is empty."
    else
      puts "Menu:"
      @items.each { |item| puts item }
    end
  end
end

# Example usage
menu = Menu.new

menu.add_item(MenuItem.new("Pizza", 10, "Delicious cheese pizza"))
menu.add_item(MenuItem.new("Burger", 8, "Juicy beef burger with fries"))

menu.view_menu

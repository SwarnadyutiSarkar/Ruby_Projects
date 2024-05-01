class InventoryItem
  attr_accessor :name, :quantity, :price

  def initialize(name, quantity, price)
    @name = name
    @quantity = quantity
    @price = price
  end

  def to_s
    "#{@name}: #{@quantity} available, $#{@price} each"
  end
end

class InventoryManagementSystem
  def initialize
    @inventory = {}
  end

  def add_item(name, quantity, price)
    if @inventory[name]
      puts "Item '#{name}' already exists in inventory."
    else
      @inventory[name] = InventoryItem.new(name, quantity, price)
      puts "Item '#{name}' added to inventory."
    end
  end

  def update_quantity(name, quantity)
    if @inventory[name]
      @inventory[name].quantity += quantity
      puts "Quantity of '#{name}' updated to #{@inventory[name].quantity}."
    else
      puts "Item '#{name}' does not exist in inventory."
    end
  end

  def view_inventory
    if @inventory.empty?
      puts "Inventory is empty."
    else
      puts "Current Inventory:"
      @inventory.each do |name, item|
        puts item
      end
    end
  end
end

# Example usage
inventory_system = InventoryManagementSystem.new

# Adding items
inventory_system.add_item("Laptop", 10, 800)
inventory_system.add_item("Phone", 20, 600)

# Updating quantity
inventory_system.update_quantity("Laptop", -2)
inventory_system.update_quantity("Phone", 5)

# Viewing inventory
inventory_system.view_inventory

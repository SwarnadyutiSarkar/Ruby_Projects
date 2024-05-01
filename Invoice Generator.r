class Invoice
  attr_accessor :customer, :items

  def initialize(customer)
    @customer = customer
    @items = []
  end

  def add_item(description, quantity, price)
    @items << { description: description, quantity: quantity, price: price }
  end

  def total_amount
    @items.map { |item| item[:quantity] * item[:price] }.sum
  end

  def to_s
    invoice_str = "Invoice for #{@customer}:\n"
    @items.each_with_index do |item, index|
      invoice_str += "#{index + 1}. #{item[:description]} (Qty: #{item[:quantity]}, Price: $#{item[:price]})\n"
    end
    invoice_str += "Total Amount: $#{total_amount}"
  end
end

# Example usage
invoice = Invoice.new("John Doe")

invoice.add_item("Web Design Service", 1, 500)
invoice.add_item("Hosting Service", 1, 100)
invoice.add_item("Maintenance", 2, 50)

puts invoice

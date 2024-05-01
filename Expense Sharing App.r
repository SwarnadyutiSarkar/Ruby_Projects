class Expense
  attr_accessor :description, :amount, :paid_by, :participants

  def initialize(description, amount, paid_by, participants)
    @description = description
    @amount = amount
    @paid_by = paid_by
    @participants = participants
  end

  def to_s
    "#{@description}: $#{@amount} (Paid by: #{@paid_by}, Participants: #{@participants})"
  end
end

class ExpenseSharingApp
  def initialize
    @expenses = []
  end

  def add_expense(description, amount, paid_by, participants)
    expense = Expense.new(description, amount, paid_by, participants)
    @expenses << expense
    puts "Expense '#{description}' has been added."
  end

  def view_expenses
    if @expenses.empty?
      puts "No expenses recorded yet."
    else
      puts "Expenses:"
      @expenses.each { |expense| puts expense }
    end
  end
end

# Example usage
expense_app = ExpenseSharingApp.new

expense_app.add_expense("Dinner", 100, "Alice", ["Alice", "Bob", "Charlie"])
expense_app.add_expense("Groceries", 50, "Bob", ["Alice", "Bob"])

expense_app.view_expenses

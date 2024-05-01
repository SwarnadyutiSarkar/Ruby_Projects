class Expense
  attr_accessor :date, :category, :amount

  def initialize(date, category, amount)
    @date = date
    @category = category
    @amount = amount
  end

  def to_s
    "#{@date} - Category: #{@category}, Amount: #{@amount}"
  end
end

class ExpenseTracker
  def initialize
    @expenses = []
  end

  def add_expense(date, category, amount)
    expense = Expense.new(date, category, amount)
    @expenses << expense
    puts "Expense added: #{expense}"
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
expense_tracker = ExpenseTracker.new

expense_tracker.add_expense("2024-04-28", "Groceries", 50)
expense_tracker.add_expense("2024-04-29", "Transportation", 30)

expense_tracker.view_expenses

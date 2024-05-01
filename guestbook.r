class Guestbook
  def initialize
    @entries = []
  end

  def add_entry(name, message)
    entry = { name: name, message: message, timestamp: Time.now }
    @entries << entry
    puts "Entry added successfully!"
  end

  def view_entries
    if @entries.empty?
      puts "Guestbook is empty."
    else
      puts "Guestbook Entries:"
      @entries.each_with_index do |entry, index|
        puts "#{index + 1}. #{entry[:name]} - #{entry[:message]} (#{entry[:timestamp]})"
      end
    end
  end
end

# Example usage
guestbook = Guestbook.new

# Adding entries
guestbook.add_entry("Alice", "Hello from Alice!")
guestbook.add_entry("Bob", "Greetings from Bob!")

# Viewing entries
guestbook.view_entries

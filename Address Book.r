class Contact
  attr_accessor :name, :phone_number, :email

  def initialize(name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
  end

  def to_s
    "#{@name}: Phone - #{@phone_number}, Email - #{@email}"
  end
end

class AddressBook
  def initialize
    @contacts = []
  end

  def add_contact(name, phone_number, email)
    contact = Contact.new(name, phone_number, email)
    @contacts << contact
    puts "Contact '#{name}' has been added to the address book."
  end

  def view_contacts
    if @contacts.empty?
      puts "No contacts available."
    else
      @contacts.each { |contact| puts contact }
    end
  end
end

# Example usage
address_book = AddressBook.new

address_book.add_contact("Alice", "1234567890", "alice@example.com")
address_book.add_contact("Bob", "9876543210", "bob@example.com")

address_book.view_contacts

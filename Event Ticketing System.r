class Event
  attr_accessor :name, :date, :venue, :capacity, :tickets_sold

  def initialize(name, date, venue, capacity)
    @name = name
    @date = date
    @venue = venue
    @capacity = capacity
    @tickets_sold = 0
  end

  def tickets_available
    @capacity - @tickets_sold
  end

  def sell_tickets(quantity)
    if quantity <= tickets_available
      @tickets_sold += quantity
      puts "#{quantity} ticket(s) sold for #{name} on #{date}."
    else
      puts "Not enough tickets available for sale."
    end
  end
end

class TicketingSystem
  def initialize
    @events = {}
  end

  def add_event(name, date, venue, capacity)
    event = Event.new(name, date, venue, capacity)
    @events[name] = event
    puts "Event '#{name}' has been added to the system."
  end

  def sell_tickets(event_name, quantity)
    event = @events[event_name]
    if event
      event.sell_tickets(quantity)
    else
      puts "Event '#{event_name}' not found."
    end
  end

  def view_event_details(event_name)
    event = @events[event_name]
    if event
      puts "Event Details:"
      puts "Name: #{event.name}"
      puts "Date: #{event.date}"
      puts "Venue: #{event.venue}"
      puts "Tickets Available: #{event.tickets_available}"
    else
      puts "Event '#{event_name}' not found."
    end
  end
end

# Example usage
ticketing_system = TicketingSystem.new

ticketing_system.add_event("Concert", "2024-06-15", "City Stadium", 1000)
ticketing_system.sell_tickets("Concert", 500)
ticketing_system.view_event_details("Concert")

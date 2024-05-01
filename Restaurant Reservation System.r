class Reservation
  attr_accessor :name, :date, :time, :party_size

  def initialize(name, date, time, party_size)
    @name = name
    @date = date
    @time = time
    @party_size = party_size
  end

  def to_s
    "#{@name}: #{@party_size} people on #{@date} at #{@time}"
  end
end

class RestaurantReservationSystem
  def initialize
    @reservations = []
  end

  def make_reservation(name, date, time, party_size)
    reservation = Reservation.new(name, date, time, party_size)
    @reservations << reservation
    puts "Reservation for #{party_size} people on #{date} at #{time} for #{name} has been made."
  end

  def view_reservations
    if @reservations.empty?
      puts "No reservations made yet."
    else
      puts "Reservations:"
      @reservations.each { |reservation| puts reservation }
    end
  end
end

# Example usage
reservation_system = RestaurantReservationSystem.new

reservation_system.make_reservation("Alice", "2024-05-01", "18:00", 4)
reservation_system.make_reservation("Bob", "2024-05-02", "19:30", 2)

reservation_system.view_reservations

class Trip
  attr_accessor :destination, :start_date, :end_date

  def initialize(destination, start_date, end_date)
    @destination = destination
    @start_date = start_date
    @end_date = end_date
  end

  def to_s
    "#{@destination}: #{@start_date} - #{@end_date}"
  end
end

class TravelPlanner
  def initialize
    @trips = []
  end

  def add_trip(destination, start_date, end_date)
    trip = Trip.new(destination, start_date, end_date)
    @trips << trip
    puts "Trip to #{@destination} from #{@start_date} to #{@end_date} has been added."
  end

  def view_trips
    if @trips.empty?
      puts "No trips planned yet."
    else
      puts "Planned Trips:"
      @trips.each { |trip| puts trip }
    end
  end
end

# Example usage
planner = TravelPlanner.new

planner.add_trip("Paris", "2024-06-01", "2024-06-05")
planner.add_trip("Tokyo", "2024-07-10", "2024-07-20")

planner.view_trips

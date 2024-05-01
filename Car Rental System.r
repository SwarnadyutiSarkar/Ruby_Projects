class Car
  attr_accessor :make, :model, :year, :rented

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @rented = false
  end

  def rent_out
    @rented = true
    puts "#{@make} #{@model} #{@year} has been rented out."
  end

  def return_car
    @rented = false
    puts "#{@make} #{@model} #{@year} has been returned."
  end
end

class CarRentalSystem
  def initialize
    @cars = []
  end

  def add_car(car)
    @cars << car
    puts "#{car.make} #{car.model} #{car.year} has been added to the rental system."
  end

  def rent_car(make, model, year)
    car = @cars.find { |car| car.make == make && car.model == model && car.year == year }
    if car
      if car.rented
        puts "Sorry, #{make} #{model} #{year} is already rented out."
      else
        car.rent_out
      end
    else
      puts "Sorry, #{make} #{model} #{year} is not available in our rental system."
    end
  end

  def return_car(make, model, year)
    car = @cars.find { |car| car.make == make && car.model == model && car.year == year }
    if car
      car.return_car
    else
      puts "Sorry, #{make} #{model} #{year} is not registered in our rental system."
    end
  end
end

# Example usage
car1 = Car.new("Toyota", "Corolla", 2020)
car2 = Car.new("Honda", "Civic", 2019)
car3 = Car.new("Ford", "Fusion", 2018)

rental_system = CarRentalSystem.new
rental_system.add_car(car1)
rental_system.add_car(car2)
rental_system.add_car(car3)

rental_system.rent_car("Toyota", "Corolla", 2020)
rental_system.return_car("Toyota", "Corolla", 2020)
rental_system.rent_car("Toyota", "Corolla", 2020)

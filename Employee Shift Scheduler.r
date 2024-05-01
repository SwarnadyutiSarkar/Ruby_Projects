class Employee
  attr_accessor :name, :shifts

  def initialize(name)
    @name = name
    @shifts = []
  end

  def add_shift(shift)
    @shifts << shift
  end

  def view_shifts
    puts "Shifts for #{@name}:"
    @shifts.each { |shift| puts shift }
  end
end

class Shift
  attr_accessor :date, :start_time, :end_time

  def initialize(date, start_time, end_time)
    @date = date
    @start_time = start_time
    @end_time = end_time
  end

  def to_s
    "#{@date}: #{@start_time} - #{@end_time}"
  end
end

class EmployeeShiftScheduler
  def initialize
    @employees = {}
  end

  def add_employee(name)
    @employees[name] = Employee.new(name)
    puts "#{name} has been added to the shift scheduler."
  end

  def assign_shift(name, date, start_time, end_time)
    if @employees[name]
      shift = Shift.new(date, start_time, end_time)
      @employees[name].add_shift(shift)
      puts "Shift assigned to #{name} on #{date} from #{start_time} to #{end_time}."
    else
      puts "#{name} is not found in the employee list."
    end
  end

  def view_employee_shifts(name)
    if @employees[name]
      @employees[name].view_shifts
    else
      puts "#{name} is not found in the employee list."
    end
  end
end

# Example usage
shift_scheduler = EmployeeShiftScheduler.new

shift_scheduler.add_employee("Alice")
shift_scheduler.add_employee("Bob")

shift_scheduler.assign_shift("Alice", "2024-05-01", "09:00", "17:00")
shift_scheduler.assign_shift("Bob", "2024-05-02", "13:00", "21:00")

shift_scheduler.view_employee_shifts("Alice")
shift_scheduler.view_employee_shifts("Bob")

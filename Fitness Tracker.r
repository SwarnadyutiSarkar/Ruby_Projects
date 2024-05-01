class Workout
  attr_accessor :date, :duration, :calories_burned, :type

  def initialize(date, duration, calories_burned, type)
    @date = date
    @duration = duration
    @calories_burned = calories_burned
    @type = type
  end

  def to_s
    "Date: #{@date}, Duration: #{@duration} mins, Calories Burned: #{@calories_burned}, Type: #{@type}"
  end
end

class FitnessTracker
  def initialize
    @workouts = []
  end

  def log_workout(date, duration, calories_burned, type)
    workout = Workout.new(date, duration, calories_burned, type)
    @workouts << workout
    puts "Workout logged: #{workout}"
  end

  def view_workouts
    if @workouts.empty?
      puts "No workouts logged yet."
    else
      puts "Logged Workouts:"
      @workouts.each { |workout| puts workout }
    end
  end
end

# Example usage
fitness_tracker = FitnessTracker.new

fitness_tracker.log_workout("2024-04-28", 60, 300, "Running")
fitness_tracker.log_workout("2024-04-29", 45, 250, "Cycling")

fitness_tracker.view_workouts

class FitnessChallengeApp
  def initialize
    @participants = {}
  end

  def add_participant(name)
    @participants[name] = { steps: 0, distance: 0 }
    puts "#{name} has joined the fitness challenge!"
  end

  def log_activity(name, steps, distance)
    if @participants[name]
      @participants[name][:steps] += steps
      @participants[name][:distance] += distance
      puts "#{name} logged #{steps} steps and #{distance} miles."
    else
      puts "#{name} is not a participant in the fitness challenge."
    end
  end

  def view_progress(name)
    if @participants[name]
      puts "#{name}'s Progress:"
      puts "Steps: #{@participants[name][:steps]}"
      puts "Distance: #{@participants[name][:distance]} miles"
    else
      puts "#{name} is not a participant in the fitness challenge."
    end
  end
end

# Example usage
fitness_app = FitnessChallengeApp.new

# Adding participants
fitness_app.add_participant("Alice")
fitness_app.add_participant("Bob")

# Logging activities
fitness_app.log_activity("Alice", 5000, 2.5)
fitness_app.log_activity("Bob", 6000, 3.0)

# Viewing progress
fitness_app.view_progress("Alice")
fitness_app.view_progress("Bob")

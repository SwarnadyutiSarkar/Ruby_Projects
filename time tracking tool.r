class TimeTracker
  def initialize
    @tasks = {}
  end

  def start_task(task_name)
    if @tasks[task_name]
      puts "Task '#{task_name}' is already running."
    else
      @tasks[task_name] = Time.now
      puts "Started task '#{task_name}'"
    end
  end

  def stop_task(task_name)
    if @tasks[task_name]
      start_time = @tasks.delete(task_name)
      elapsed_time = Time.now - start_time
      puts "Stopped task '#{task_name}'. Elapsed time: #{format_time(elapsed_time)}"
    else
      puts "Task '#{task_name}' is not running."
    end
  end

  private

  def format_time(seconds)
    Time.at(seconds).utc.strftime("%H:%M:%S")
  end
end

# Example usage
tracker = TimeTracker.new
tracker.start_task("Coding")
sleep(5) # Simulate working on task
tracker.stop_task("Coding")

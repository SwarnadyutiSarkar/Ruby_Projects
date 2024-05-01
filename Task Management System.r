class Task
  attr_accessor :title, :description, :status

  def initialize(title, description)
    @title = title
    @description = description
    @status = "To Do"
  end

  def update_status(new_status)
    @status = new_status
  end

  def to_s
    "#{@title}: #{@description} (Status: #{@status})"
  end
end

class TaskManager
  def initialize
    @tasks = []
  end

  def add_task(title, description)
    task = Task.new(title, description)
    @tasks << task
    puts "Task '#{title}' has been added to the system."
  end

  def view_tasks
    if @tasks.empty?
      puts "No tasks available."
    else
      @tasks.each { |task| puts task }
    end
  end

  def update_task_status(title, new_status)
    task = @tasks.find { |task| task.title == title }
    if task
      task.update_status(new_status)
      puts "Task '#{title}' status updated to '#{new_status}'."
    else
      puts "Task '#{title}' not found in the system."
    end
  end
end

# Example usage
task_manager = TaskManager.new

task_manager.add_task("Implement feature X", "Implement feature X according to specifications")
task_manager.add_task("Fix bug in module Y", "Fix bug causing crash in module Y")

task_manager.update_task_status("Fix bug in module Y", "In Progress")
task_manager.view_tasks

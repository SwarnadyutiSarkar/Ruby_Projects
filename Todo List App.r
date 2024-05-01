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

class TodoListApp
  def initialize
    @tasks = []
  end

  def add_task(title, description)
    task = Task.new(title, description)
    @tasks << task
    puts "Task '#{title}' has been added to the list."
  end

  def view_tasks
    if @tasks.empty?
      puts "No tasks available."
    else
      puts "Tasks:"
      @tasks.each { |task| puts task }
    end
  end

  def update_task_status(title, new_status)
    task = @tasks.find { |task| task.title == title }
    if task
      task.update_status(new_status)
      puts "Task '#{title}' status updated to '#{new_status}'."
    else
      puts "Task '#{title}' not found in the list."
    end
  end
end

# Example usage
todo_list_app = TodoListApp.new

todo_list_app.add_task("Implement feature X", "Implement feature X according to specifications")
todo_list_app.add_task("Fix bug in module Y", "Fix bug causing crash in module Y")

todo_list_app.update_task_status("Fix bug in module Y", "In Progress")
todo_list_app.view_tasks

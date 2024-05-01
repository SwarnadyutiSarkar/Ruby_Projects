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

class TrelloClone
  def initialize
    @tasks = []
  end

  def create_task(title, description)
    task = Task.new(title, description)
    @tasks << task
    puts "Task '#{title}' has been created and added to the board."
  end

  def view_tasks
    if @tasks.empty?
      puts "No tasks created yet."
    else
      puts "Tasks on the board:"
      @tasks.each { |task| puts task }
    end
  end

  def update_task_status(title, new_status)
    task = @tasks.find { |task| task.title == title }
    if task
      task.update_status(new_status)
      puts "Task '#{title}' status updated to '#{new_status}'."
    else
      puts "Task '#{title}' not found on the board."
    end
  end
end

# Example usage
trello_clone = TrelloClone.new

trello_clone.create_task("Implement feature X", "Implement feature X according to specifications")
trello_clone.create_task("Fix bug in module Y", "Fix bug causing crash in module Y")

trello_clone.update_task_status("Fix bug in module Y", "In Progress")
trello_clone.view_tasks

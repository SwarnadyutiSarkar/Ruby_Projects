class Task
  attr_accessor :title, :description, :assignee, :status

  def initialize(title, description, assignee)
    @title = title
    @description = description
    @assignee = assignee
    @status = "Open"
  end

  def mark_as_done
    @status = "Done"
  end

  def to_s
    "#{@title}: #{@description} (Assignee: #{@assignee}, Status: #{@status})"
  end
end

class ProjectManagementTool
  def initialize
    @tasks = []
  end

  def create_task(title, description, assignee)
    task = Task.new(title, description, assignee)
    @tasks << task
    puts "Task '#{title}' has been created and assigned to #{assignee}."
  end

  def view_tasks
    if @tasks.empty?
      puts "No tasks created yet."
    else
      puts "Tasks:"
      @tasks.each { |task| puts task }
    end
  end

  def mark_task_as_done(title)
    task = @tasks.find { |task| task.title == title }
    if task
      task.mark_as_done
      puts "Task '#{title}' has been marked as done."
    else
      puts "Task '#{title}' not found."
    end
  end
end

# Example usage
project_tool = ProjectManagementTool.new

project_tool.create_task("Implement feature X", "Implement feature X according to specifications", "Alice")
project_tool.create_task("Fix bug in module Y", "Fix bug causing crash in module Y", "Bob")

project_tool.mark_task_as_done("Fix bug in module Y")
project_tool.view_tasks

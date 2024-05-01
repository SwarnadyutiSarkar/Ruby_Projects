class Bug
  attr_accessor :title, :description, :severity, :status

  def initialize(title, description, severity)
    @title = title
    @description = description
    @severity = severity
    @status = "Open"
  end

  def mark_as_fixed
    @status = "Fixed"
  end

  def to_s
    "#{@title}: #{@description} (Severity: #{@severity}, Status: #{@status})"
  end
end

class BugTracker
  def initialize
    @bugs = []
  end

  def report_bug(title, description, severity)
    bug = Bug.new(title, description, severity)
    @bugs << bug
    puts "Bug '#{title}' has been reported with severity #{@severity}."
  end

  def view_bugs
    if @bugs.empty?
      puts "No bugs reported yet."
    else
      puts "Bugs:"
      @bugs.each { |bug| puts bug }
    end
  end

  def mark_bug_as_fixed(title)
    bug = @bugs.find { |bug| bug.title == title }
    if bug
      bug.mark_as_fixed
      puts "Bug '#{title}' has been marked as fixed."
    else
      puts "Bug '#{title}' not found."
    end
  end
end

# Example usage
bug_tracker = BugTracker.new

bug_tracker.report_bug("Crash on startup", "Application crashes on startup", "Critical")
bug_tracker.report_bug("UI glitch", "Button alignment issue on home screen", "Minor")

bug_tracker.mark_bug_as_fixed("UI glitch")
bug_tracker.view_bugs

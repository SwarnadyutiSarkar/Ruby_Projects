class JobApplication
  attr_accessor :company, :position, :status

  def initialize(company, position)
    @company = company
    @position = position
    @status = "Applied"
  end

  def update_status(new_status)
    @status = new_status
  end

  def to_s
    "#{@position} at #{@company} (Status: #{@status})"
  end
end

class JobApplicationTracker
  def initialize
    @applications = []
  end

  def add_application(company, position)
    application = JobApplication.new(company, position)
    @applications << application
    puts "Application for #{position} at #{company} has been added."
  end

  def view_applications
    if @applications.empty?
      puts "No job applications added yet."
    else
      puts "Job Applications:"
      @applications.each { |application| puts application }
    end
  end

  def update_application_status(company, position, new_status)
    application = @applications.find { |application| application.company == company && application.position == position }
    if application
      application.update_status(new_status)
      puts "Status of application for #{position} at #{company} has been updated to #{new_status}."
    else
      puts "Application for #{position} at #{company} not found."
    end
  end
end

# Example usage
application_tracker = JobApplicationTracker.new

application_tracker.add_application("ABC Inc.", "Software Engineer")
application_tracker.add_application("XYZ Corp.", "Data Analyst")

application_tracker.update_application_status("ABC Inc.", "Software Engineer", "Interview Scheduled")
application_tracker.view_applications

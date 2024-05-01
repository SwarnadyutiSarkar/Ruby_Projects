class Job
  attr_accessor :title, :company, :location, :description

  def initialize(title, company, location, description)
    @title = title
    @company = company
    @location = location
    @description = description
  end

  def to_s
    "#{@title} at #{@company} (Location: #{@location}) - #{@description}"
  end
end

class JobBoard
  def initialize
    @jobs = []
  end

  def post_job(title, company, location, description)
    job = Job.new(title, company, location, description)
    @jobs << job
    puts "Job '#{title}' at #{company} posted on the board."
  end

  def view_jobs
    if @jobs.empty?
      puts "No jobs posted on the board."
    else
      puts "Jobs on the Board:"
      @jobs.each { |job| puts job }
    end
  end
end

# Example usage
job_board = JobBoard.new

job_board.post_job("Software Engineer", "ABC Inc.", "New York", "Full-stack development role")
job_board.post_job("Data Analyst", "XYZ Corp.", "San Francisco", "Analyzing and interpreting data")

job_board.view_jobs

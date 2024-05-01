class Course
  attr_accessor :title, :description, :instructor, :students

  def initialize(title, description, instructor)
    @title = title
    @description = description
    @instructor = instructor
    @students = []
  end

  def add_student(student)
    @students << student
    puts "#{student} has enrolled in #{@title}."
  end

  def view_students
    if @students.empty?
      puts "No students enrolled in #{@title} yet."
    else
      puts "Students enrolled in #{@title}:"
      @students.each { |student| puts student }
    end
  end
end

class LearningManagementSystem
  def initialize
    @courses = []
  end

  def create_course(title, description, instructor)
    course = Course.new(title, description, instructor)
    @courses << course
    puts "Course '#{title}' has been created and is taught by #{instructor}."
  end

  def enroll_student(course_title, student)
    course = @courses.find { |course| course.title == course_title }
    if course
      course.add_student(student)
    else
      puts "Course '#{course_title}' not found."
    end
  end

  def view_course_students(course_title)
    course = @courses.find { |course| course.title == course_title }
    if course
      course.view_students
    else
      puts "Course '#{course_title}' not found."
    end
  end
end

# Example usage
lms = LearningManagementSystem.new

lms.create_course("Ruby Programming", "Learn Ruby from scratch", "John Doe")
lms.create_course("Web Development", "Introduction to web development", "Alice Smith")

lms.enroll_student("Ruby Programming", "Bob")
lms.enroll_student("Web Development", "Charlie")

lms.view_course_students("Ruby Programming")
lms.view_course_students("Web Development")

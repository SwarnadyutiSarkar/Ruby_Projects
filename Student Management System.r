class Student
  attr_accessor :id, :name, :age, :grade

  def initialize(id, name, age, grade)
    @id = id
    @name = name
    @age = age
    @grade = grade
  end

  def to_s
    "ID: #{@id}, Name: #{@name}, Age: #{@age}, Grade: #{@grade}"
  end
end

class StudentManagementSystem
  def initialize
    @students = {}
  end

  def add_student(id, name, age, grade)
    student = Student.new(id, name, age, grade)
    @students[id] = student
    puts "Student #{name} added to the system."
  end

  def view_student(id)
    student = @students[id]
    if student
      puts "Student Details:"
      puts student
    else
      puts "Student with ID #{id} not found."
    end
  end

  def list_students
    if @students.empty?
      puts "No students in the system."
    else
      puts "List of Students:"
      @students.each_value { |student| puts student }
    end
  end
end

# Example usage
student_system = StudentManagementSystem.new

student_system.add_student(1, "Alice", 17, "12th")
student_system.add_student(2, "Bob", 16, "11th")

student_system.view_student(1)
student_system.view_student(3)  # Student with ID 3 not found.
student_system.list_students

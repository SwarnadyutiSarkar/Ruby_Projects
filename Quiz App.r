class Question
  attr_accessor :text, :options, :correct_option

  def initialize(text, options, correct_option)
    @text = text
    @options = options
    @correct_option = correct_option
  end
end

class QuizApp
  def initialize
    @questions = []
  end

  def add_question(text, options, correct_option)
    question = Question.new(text, options, correct_option)
    @questions << question
    puts "New question added to the quiz."
  end

  def start_quiz
    score = 0
    @questions.each_with_index do |question, index|
      puts "Question #{index + 1}: #{question.text}"
      puts "Options:"
      question.options.each { |option| puts "- #{option}" }
      print "Your answer: "
      user_answer = gets.chomp
      if user_answer == question.correct_option
        puts "Correct!"
        score += 1
      else
        puts "Incorrect. The correct answer is '#{question.correct_option}'."
      end
    end
    puts "Quiz completed. Your score: #{score}/#{@questions.length}"
  end
end

# Example usage
quiz_app = QuizApp.new

quiz_app.add_question("What is the capital of France?", ["London", "Paris", "Berlin", "Rome"], "Paris")
quiz_app.add_question("Which is the largest planet in our solar system?", ["Earth", "Jupiter", "Mars", "Venus"], "Jupiter")

quiz_app.start_quiz

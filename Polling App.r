class Poll
  attr_accessor :question, :options, :responses

  def initialize(question, options)
    @question = question
    @options = options
    @responses = {}
  end

  def add_response(user, response)
    if @options.include?(response)
      @responses[user] = response
      puts "#{user} has submitted response '#{response}' for the poll '#{question}'."
    else
      puts "Invalid response '#{response}' for the poll '#{question}'."
    end
  end

  def view_results
    puts "Poll Results for '#{question}':"
    @options.each do |option|
      count = @responses.values.count(option)
      puts "- #{option}: #{count} vote(s)"
    end
  end
end

class PollingApp
  def initialize
    @polls = {}
  end

  def create_poll(question, options)
    poll = Poll.new(question, options)
    @polls[question] = poll
    puts "Poll '#{question}' has been created."
  end

  def respond_to_poll(user, question, response)
    poll = @polls[question]
    if poll
      poll.add_response(user, response)
    else
      puts "Poll '#{question}' not found."
    end
  end

  def view_poll_results(question)
    poll = @polls[question]
    if poll
      poll.view_results
    else
      puts "Poll '#{question}' not found."
    end
  end
end

# Example usage
polling_app = PollingApp.new

polling_app.create_poll("Favorite Color", ["Red", "Blue", "Green"])
polling_app.respond_to_poll("Alice", "Favorite Color", "Red")
polling_app.respond_to_poll("Bob", "Favorite Color", "Blue")

polling_app.view_poll_results("Favorite Color")

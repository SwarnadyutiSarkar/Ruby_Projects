class ChatMessage
  attr_accessor :sender, :content, :timestamp

  def initialize(sender, content)
    @sender = sender
    @content = content
    @timestamp = Time.now
  end

  def to_s
    "#{@timestamp.strftime('%Y-%m-%d %H:%M:%S')} - #{@sender}: #{@content}"
  end
end

class ChatApplication
  def initialize
    @messages = []
  end

  def send_message(sender, content)
    message = ChatMessage.new(sender, content)
    @messages << message
    puts "Message sent by #{sender}: #{content}"
  end

  def view_messages
    if @messages.empty?
      puts "No messages available."
    else
      puts "Chat History:"
      @messages.each { |message| puts message }
    end
  end
end

# Example usage
chat_app = ChatApplication.new

chat_app.send_message("Alice", "Hi Bob!")
chat_app.send_message("Bob", "Hey Alice, how are you?")

chat_app.view_messages

class Note
  attr_accessor :title, :content

  def initialize(title, content)
    @title = title
    @content = content
  end

  def to_s
    "#{@title}:\n#{@content}"
  end
end

class NoteTakingApp
  def initialize
    @notes = []
  end

  def create_note(title, content)
    note = Note.new(title, content)
    @notes << note
    puts "Note '#{title}' has been created."
  end

  def view_notes
    if @notes.empty?
      puts "No notes created yet."
    else
      puts "Notes:"
      @notes.each { |note| puts note }
    end
  end
end

# Example usage
note_app = NoteTakingApp.new

note_app.create_note("Meeting Agenda", "Agenda for today's meeting:\n1. Introduction\n2. Review of last meeting\n3. Discussion on project status")
note_app.create_note("To-Do List", "Tasks for today:\n- Finish report\n- Send email to client\n- Call supplier")

note_app.view_notes

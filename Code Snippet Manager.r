class CodeSnippet
  attr_accessor :title, :language, :code

  def initialize(title, language, code)
    @title = title
    @language = language
    @code = code
  end

  def to_s
    "#{@title} (Language: #{@language}):\n#{@code}"
  end
end

class CodeSnippetManager
  def initialize
    @snippets = []
  end

  def add_snippet(title, language, code)
    snippet = CodeSnippet.new(title, language, code)
    @snippets << snippet
    puts "Code snippet '#{title}' has been added to the manager."
  end

  def view_snippets
    if @snippets.empty?
      puts "No code snippets available."
    else
      @snippets.each { |snippet| puts snippet }
    end
  end
end

# Example usage
snippet_manager = CodeSnippetManager.new

snippet_manager.add_snippet("Hello World", "Ruby", "puts 'Hello, world!'")
snippet_manager.add_snippet("Bubble Sort", "Python", "def bubble_sort(arr):\n  n = len(arr)\n  for i in range(n):\n    for j in range(0, n-i-1):\n      if arr[j] > arr[j+1]:\n        arr[j], arr[j+1] = arr[j+1], arr[j]")

snippet_manager.view_snippets

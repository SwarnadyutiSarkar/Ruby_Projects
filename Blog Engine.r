class Post
  attr_accessor :title, :content, :author, :timestamp

  def initialize(title, content, author)
    @title = title
    @content = content
    @author = author
    @timestamp = Time.now
  end

  def to_s
    "#{@title}\nAuthor: #{@author}\n#{@content}"
  end
end

class BlogEngine
  def initialize
    @posts = []
  end

  def create_post(title, content, author)
    post = Post.new(title, content, author)
    @posts << post
    puts "New post '#{title}' created by #{author}."
  end

  def view_posts
    if @posts.empty?
      puts "No posts available."
    else
      puts "Recent Posts:"
      @posts.each { |post| puts post }
    end
  end
end

# Example usage
blog_engine = BlogEngine.new

blog_engine.create_post("Introduction to Ruby", "Ruby is a powerful and dynamic programming language.", "Alice")
blog_engine.create_post("Getting Started with Rails", "Rails is a popular web application framework for Ruby.", "Bob")

blog_engine.view_posts

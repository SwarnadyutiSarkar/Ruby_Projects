class Post
  attr_accessor :title, :content, :author, :created_at

  def initialize(title, content, author)
    @title = title
    @content = content
    @author = author
    @created_at = Time.now
  end

  def to_s
    "#{@title}\nAuthor: #{@author}\n#{@content}"
  end
end

class Forum
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
      @posts.each { |post| puts post }
    end
  end
end

# Example usage
forum = Forum.new

forum.create_post("Introduction", "Hello, I'm new here!", "Alice")
forum.create_post("Question about Ruby", "Can someone explain blocks in Ruby?", "Bob")

forum.view_posts

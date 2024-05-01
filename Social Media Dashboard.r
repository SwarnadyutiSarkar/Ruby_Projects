class Post
  attr_accessor :author, :content, :timestamp

  def initialize(author, content)
    @author = author
    @content = content
    @timestamp = Time.now
  end

  def to_s
    "#{@timestamp}: #{@author} - #{@content}"
  end
end

class SocialMediaDashboard
  def initialize
    @posts = []
  end

  def add_post(author, content)
    post = Post.new(author, content)
    @posts << post
    puts "New post added by #{author}: #{content}"
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
social_media_dashboard = SocialMediaDashboard.new

social_media_dashboard.add_post("Alice", "Hello, everyone!")
social_media_dashboard.add_post("Bob", "Enjoying the weather today.")

social_media_dashboard.view_posts

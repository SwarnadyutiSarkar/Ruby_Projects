class Article
  attr_accessor :title, :author, :source

  def initialize(title, author, source)
    @title = title
    @author = author
    @source = source
  end

  def to_s
    "#{@title} by #{author} (Source: #{@source})"
  end
end

class NewsAggregator
  def initialize
    @articles = []
  end

  def add_article(title, author, source)
    article = Article.new(title, author, source)
    @articles << article
    puts "Article '#{title}' by #{author} (Source: #{source}) has been added."
  end

  def browse_articles
    if @articles.empty?
      puts "No articles available."
    else
      puts "Available Articles:"
      @articles.each { |article| puts article }
    end
  end
end

# Example usage
news_app = NewsAggregator.new

news_app.add_article("Ruby on Rails Tutorial", "John Doe", "TechCrunch")
news_app.add_article("Machine Learning Advancements", "Alice Smith", "MIT News")

news_app.browse_articles

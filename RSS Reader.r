require 'rss'
require 'open-uri'

class RSSReader
  def initialize(feed_url)
    @feed_url = feed_url
  end

  def read_feed
    open(@feed_url) do |rss|
      feed = RSS::Parser.parse(rss)
      puts "Title: #{feed.channel.title}"
      puts "Description: #{feed.channel.description}"
      puts "Link: #{feed.channel.link}"
      puts "Items:"
      feed.items.each do |item|
        puts "- #{item.title}: #{item.link}"
      end
    end
  rescue StandardError => e
    puts "Error reading feed: #{e.message}"
  end
end

# Example usage
rss_reader = RSSReader.new('https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml')
rss_reader.read_feed

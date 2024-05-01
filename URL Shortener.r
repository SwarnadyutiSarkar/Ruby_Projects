class URLShortener
  def initialize
    @urls = {}
  end

  def shorten(url)
    short_code = generate_short_code
    @urls[short_code] = url
    short_code
  end

  def expand(short_code)
    @urls[short_code]
  end

  private

  def generate_short_code
    rand(36**6).to_s(36) # Generate a random alphanumeric string of length 6
  end
end

# Example usage
url_shortener = URLShortener.new

short_code = url_shortener.shorten("https://www.example.com")
puts "Shortened URL: #{short_code}"
puts "Expanded URL: #{url_shortener.expand(short_code)}"

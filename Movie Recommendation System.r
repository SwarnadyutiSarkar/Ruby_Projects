class Movie
  attr_accessor :title, :genre, :rating

  def initialize(title, genre, rating)
    @title = title
    @genre = genre
    @rating = rating
  end

  def to_s
    "#{@title} (Genre: #{@genre}, Rating: #{@rating})"
  end
end

class MovieRecommendationSystem
  def initialize
    @movies = []
  end

  def add_movie(title, genre, rating)
    movie = Movie.new(title, genre, rating)
    @movies << movie
    puts "Movie '#{title}' has been added to the system."
  end

  def recommend_movies(genre, min_rating)
    puts "Recommended Movies (#{genre}, Rating >= #{min_rating}):"
    recommended_movies = @movies.select { |movie| movie.genre == genre && movie.rating >= min_rating }
    recommended_movies.each { |movie| puts movie }
  end
end

# Example usage
movie_system = MovieRecommendationSystem.new

movie_system.add_movie("The Shawshank Redemption", "Drama", 9.3)
movie_system.add_movie("Inception", "Sci-Fi", 8.8)
movie_system.add_movie("The Godfather", "Crime", 9.2)

movie_system.recommend_movies("Drama", 9.0)

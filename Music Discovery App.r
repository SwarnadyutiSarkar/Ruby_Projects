class Song
  attr_accessor :title, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end

  def to_s
    "#{@title} by #{@artist} (Genre: #{@genre})"
  end
end

class MusicDiscoveryApp
  def initialize
    @songs = []
  end

  def add_song(title, artist, genre)
    song = Song.new(title, artist, genre)
    @songs << song
    puts "Song '#{title}' by #{artist} (Genre: #{genre}) has been added to the library."
  end

  def browse_songs(genre)
    matching_songs = @songs.select { |song| song.genre == genre }
    if matching_songs.empty?
      puts "No songs found in the #{genre} genre."
    else
      puts "Songs in the #{genre} genre:"
      matching_songs.each { |song| puts song }
    end
  end

  def search_song(keyword)
    matching_songs = @songs.select { |song| song.title.downcase.include?(keyword.downcase) || song.artist.downcase.include?(keyword.downcase) }
    if matching_songs.empty?
      puts "No songs found matching '#{keyword}'."
    else
      puts "Matching songs:"
      matching_songs.each { |song| puts song }
    end
  end
end

# Example usage
music_app = MusicDiscoveryApp.new

music_app.add_song("Shape of You", "Ed Sheeran", "Pop")
music_app.add_song("Bohemian Rhapsody", "Queen", "Rock")
music_app.add_song("Uptown Funk", "Mark Ronson ft. Bruno Mars", "Pop")

music_app.browse_songs("Pop")
music_app.search_song("Bohemian")

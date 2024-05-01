class Song
  attr_accessor :title, :artist, :duration

  def initialize(title, artist, duration)
    @title = title
    @artist = artist
    @duration = duration
  end

  def to_s
    "#{@title} - #{@artist} (Duration: #{@duration})"
  end
end

class MusicPlayer
  def initialize
    @playlist = []
  end

  def add_song(title, artist, duration)
    song = Song.new(title, artist, duration)
    @playlist << song
    puts "Song '#{title}' by #{artist} has been added to the playlist."
  end

  def play_song(title)
    song = @playlist.find { |song| song.title == title }
    if song
      puts "Now playing: #{song}"
    else
      puts "Song '#{title}' not found in the playlist."
    end
  end
end

# Example usage
music_player = MusicPlayer.new

music_player.add_song("Shape of You", "Ed Sheeran", "4:23")
music_player.add_song("Despacito", "Luis Fonsi", "3:48")

music_player.play_song("Shape of You")
music_player.play_song("Despacito")
music_player.play_song("Let It Go")

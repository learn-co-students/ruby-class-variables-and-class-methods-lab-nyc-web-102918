class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []

  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count =
    @@genres.uniq.map do |genre|
        genre_count = genre, @@genres.count(genre)
    end
    hash = Hash[*genre_count.flatten]
  end

  def self.artist_count
    artist_count =
    @@artists.uniq.map do |artist|
      artist_count = artist, @@artists.count(artist)
    end
    hash = Hash[*artist_count.flatten]
  end
end

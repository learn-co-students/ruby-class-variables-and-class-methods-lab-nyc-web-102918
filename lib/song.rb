
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []

  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |v, k| k[v] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |v, k| k[v] += 1}
  end

  def self.count
    @@count
  end



end

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres = {}
    self.genres.each do |genre|
      genres[genre] = 0
    end
    @@genres.each do |genre|
      genres[genre] += 1
    end
    genres
  end

  def self.artist_count
    artists = {}
    self.artists.each do |artist|
      artists[artist] = 0
    end
    @@artists.each do |artist|
      artists[artist] += 1
    end
    artists
  end

end

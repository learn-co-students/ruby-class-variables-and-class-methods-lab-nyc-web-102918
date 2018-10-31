

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1

    @@artists << artist
    @@genres << genre
  end

  def self.count
      @@count
  end

  def self.artists
    newAr = @@artists
    newAr.uniq
  end

  def self.genres
  newAr =  @@genres
  newAr.uniq
  end

  def self.genre_count
    answerHash = {}
    counter = 1
    @@genres.each do |each_genre|
      if answerHash.keys.include?(each_genre)
        answerHash[each_genre] +=1
      else
        answerHash[each_genre] = counter
      end
    end
    answerHash
  end

  def self.artist_count
    answerHash = {}
    counter = 1
    @@artists.each do |each_artist|
      if answerHash.keys.include?(each_artist)
        answerHash[each_artist] +=1
      else
        answerHash[each_artist] = counter
      end
    end
    answerHash

  end


end

class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres << genre
    @@artists << artist

  end

  def self.count #estoy definiendo una class method con self
    @@count

  end

  def self.genres #estoy definiendo una class method con self
    @@genres.uniq!

  end

  def self.artists #estoy definiendo una class method con self
    @@artists.uniq!

  end

  def self.genre_count
    genre_count= {}

    @@genres.each do |genre|
      if genre_count[genre]
         genre_count[genre]+=1
      else genre_count[genre]=1
      end

    end
    genre_count

  end



# ou will need to iterate over the @@genres array and populate a hash with the key/value pairs.
# You will need to check to see if the hash already contains a key of a particular genre.
#  If so, increment the value of that key by one, otherwise, create a new key/value pair.



  def self.artist_count
    artist_count= {}

    @@artists.each do |artist|
      if artist_count[artist]
         artist_count[artist]+=1
      else artist_count[artist]=1
      end

    end
    artist_count

  end

end

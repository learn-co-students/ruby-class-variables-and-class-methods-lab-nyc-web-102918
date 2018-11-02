class Song

# There should be an attr_accessor for those three attributes.
  attr_accessor:name,:artist,:genre

# Define your Song class such that an individual song is initialized with a name, artist and genre.
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists << self.artist
    @@genres << self.genre
    @@count+=1
    # @@count +=self
  end


  # class variables
  #   has a class variable, @@count
  @@count=0

  # .count
  #   is a class method that returns that number of songs created
  def self.count
    @@count
  end

#   has a class variable, @@artists, that contains all of the artists of existing songs
  @@artists=[]
# .artists
#   is a class method that returns a unique array of artists of existing songs
  def self.artists
    @@artists.uniq!
  end

#   has a class variable, @@genres, that contains all of the genres of existing songs
  @@genres=[]
# .genres
#   is a class method that returns a unique array of genres of existing songs
  def self.genres
    @@genres.uniq!
  end
  # Write a class method, .genres that returns an array of all of
  # the genres of existing songs. This array should contain only
  # unique genres––no duplicates! Think about what you'll need to
  # do to get this method working.You'll need a class variable,
  #   let's call it @@genres, that is equal to an empty array.
  # When should you add genres to the array? Whenever a new song
  # is created. Your #initialize method should add the genre of
  #  the song being created to the @@genres array. All genres
  #  should be added to the array. Control for duplicates when
  #  you code your .genres class method, not when you add
  #  genres to the original @@genres array. We will want to know
  #  how many songs of each genre have been created. We'll
  #  revisit that job a little later on.
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] += 1
    end
      genre_count
  end



  def self.artist_count
    artist_count =Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist]+=1
    end
    artist_count
  end

end #end of Song class










  # .genre_count
  #   is a class method that returns a hash of genres and the number of songs that have those genres


  # .artist_count
  #   is a class method that returns a hash of artists and the number of songs that have those artists

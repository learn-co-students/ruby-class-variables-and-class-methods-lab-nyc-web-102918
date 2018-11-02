class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists << self.artist
    @@genres.push(self.genre)
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
    #1. create a new Hash
    #2. use all unique genres as keys
    #3. count the number of genres in Song class (all the songs) and save it to the genre keys
    hash = {}
    @@genres.each do |genre|
      if hash.has_key?(genre)
      hash[genre] +=1
    else
      hash[genre] = 1
    end
    end
    hash
  end
def self.artist_count
  hash = {}
  @@artists.each do |artists|
    if hash.has_key?(artists)
      hash[artists] +=1
    else
      hash[artists] = 1
 end
end
hash
end
end

# Song.count
# Song.artist
#
# nn_problem = Song.new("99 problems", "Jay Z", "rap")
#
# nn_problem.name = "99 problems"
# nn_problem.artist = "Jay Z"
# nn_problem.genre = "rap"
# Song.count = 1
# Song.artist = ["JayZ"]
#
# nancy_mulligan = Song.new("Nancy Mulligan", "Ed Sheran", "pop")
#
# nancy_mulligan.name = "Nancy Mulligan"
# nancy_mulligan.artist = "Ed Sheran"
# nancy_mulligan.genre = "pop"
# Song.count = 2
# Song.artist = ["JayZ", "Ed Sheran"]

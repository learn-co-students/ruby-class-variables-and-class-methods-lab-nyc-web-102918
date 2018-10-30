class Song
	@@count = 0
	@@artists = []
	@@genres = []

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
		out = {}
		@@genres.each do |ele|
			if out[ele].nil?
				out[ele] = 0
			end

			out[ele] += 1
		end

		out
	end

	def self.artist_count
		out = {}
		@@artists.each do |ele|
			if out[ele].nil?
				out[ele] = 0
			end

			out[ele] += 1
		end

		out
	end

	attr_reader :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@artists << artist
		@@genres << genre
	end
end
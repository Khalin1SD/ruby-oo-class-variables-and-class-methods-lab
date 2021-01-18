require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = []

    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << self.artist 
        @@genres << self.genre
        @@genre_count << self.genre

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

    # def self.genre_count
    #     @@genres
    # end





end

binding.pry
require 'pry'

class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def self.all
        @@all
    end

    def save
        Genre.all << self
    end

    def songs
        Song.all.select do |song_info|
            song_info.genre == self
        end
    end

    def artists
        self.songs.map do |genre_songs|
            genre_songs.artist
        end
    end

end
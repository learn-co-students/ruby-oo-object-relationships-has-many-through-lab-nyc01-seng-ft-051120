require 'pry'

class Artist
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
        Artist.all << self
    end

    def new_song(name, genre) 
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |songs|
            songs.artist == self
        end
    end

    def genres
        self.songs.map do |song_info|
            song_info.genre
        end
    end

end
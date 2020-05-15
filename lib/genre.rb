require 'pry'
class Genre
    @@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
    end
    def songs
        Song.all
    end
    def self.all
        @@all
    end
    def artists
        Song.all.map do |song|
            song.artist
        end

    end

end
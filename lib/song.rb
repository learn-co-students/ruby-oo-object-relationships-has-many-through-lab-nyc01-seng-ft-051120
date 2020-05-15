class Song
    @@all=[]
    attr_accessor :genre, :artist, :name

    def initialize(name, artist, genre)
        @genre=genre
        @name=name
        @artist=artist
        @@all << self
    end
    def self.all
        @@all
    end
   
end

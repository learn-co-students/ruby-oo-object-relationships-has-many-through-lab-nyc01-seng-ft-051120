class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Artist.all << self
    end


    def self.all
        @@all
    end

    def songs
        Song.all.select{|x| x.artist == self}
    end
    
    def new_song(title,genre)
        Song.new(title,self,genre)
    end

    def genres
        self.songs.map{|x|x.genre}
    end
end
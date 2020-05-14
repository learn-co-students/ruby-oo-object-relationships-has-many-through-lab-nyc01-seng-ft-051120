class Genre
    attr_accessor :name, :artist


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    # def artists
    #     songs.map do |song|
    #         song.artist == self
    #     end
    # end
    
    ### why does the below work but the above doesnt? 

    def artists
        songs.map(&:artist)
    end

end
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

    def new_song(name,genre)
       Song.new(name,self,genre)
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def genres
        songs.map do |song_by_artist_instance|
            song_by_artist_instance.genre
        end
    end

end
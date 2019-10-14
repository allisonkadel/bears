# Artist has many Songs
# Song belongs to Artist

# Song belongs to Genre
# Genre has many Songs

# Artist has many Genres through Songs
# Genre has many Artists through Songs

class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.collect {|song| song.genre}
    end

end
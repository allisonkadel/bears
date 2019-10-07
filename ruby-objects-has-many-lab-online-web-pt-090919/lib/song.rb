class Song

    attr_accessor :artist

    @@all = []

    def initialize(song_name)
        @@all << self
        @song_name = song_name
    end

    def artist=(artist)
        @artist = artist #=> here we tell the song about its artist
        artist.songs << self #=> here we tell the artist about its new song
        # inside the Song instance scope, Self refers to the song object calling the artist= method
        # in general, should the association be the responsibility of one of the classes,
        # or both of the classes simultaneously?
        # are there potential problems with having two classes keep track of a single association?
        # are there any situations in which each class could have different data associated
            # with the same association (different sources of truth)?
    end

    def self.all
        @@all
    end

end
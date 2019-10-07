class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @@all << self
        @songs = [] #=> Approach 1 (see description below)
        @name = name
    end
    
    def songs

        # There are two ways we can approach returning a specific artist's songs:

        # Approach 1 => We make every artist instance responsible for storing its own songs array
        # Approach 2 => We rely on the Song class to store all of its songs, and we go looking for the songs
        #               in this array that are associated with a given artist

        Song.all.select do |song| #=> Approach 2
            song.artist == self
        end

        @songs #=> Approach 1

        # What are the pros and cons of each approach?
        # For each approach, ask yourself what data is required to be stored,
        # 

    end

    # add_song takes in an argument of a song and associates that song 
    # with the artist by telling the song that it belongs to that artist
    def add_song(song) #=> we found out by looking at the test that the argument is a song instance
        # the following code tells the current artist calling the method what new song it has:
        self.songs << song
        # but the test is asking us for the inverse of this - instead of telling artist 
        # about its songs, we need to tell song about its artist:
        song.artist = self
        # inside the Artist instance scope, Self refers to the artist object calling the add_song method
    end

end
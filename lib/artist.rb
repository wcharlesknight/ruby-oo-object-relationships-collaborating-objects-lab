class Artist

    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end  

    def self.all
        @@all
    end 

    def self.create_by_name(name)
        nartist = Artist.new(name)
        @@all << nartist
        nartist
    end 

    def add_song(song)
        song.artist = self
    end 

    def songs
        Song.all.select {|songs| songs.artist == self}
    end 

    def self.find_or_create_by_name(name)
        if @@all.find {|artists| artists.name == name}
        @@all.find {|artists| artists.name == name}
        else
            Artist.new(name)
        end 
    end  

    def print_songs
         songs.each {|song| puts song.name}
    end
    

end 
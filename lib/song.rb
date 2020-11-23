require 'pry'
class Song

    attr_accessor :name, :artist 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all
    end 



    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

    def self.new_by_filename(file)
        song = file.split(" - ")[1]
        artist = file.split(" - ")[0] 
        song = Song.new(song)
        song.artist = Artist.new(artist)
        song
    end 

end 
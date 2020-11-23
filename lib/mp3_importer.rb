class MP3Importer
    
    attr_accessor :path

    @@all = []
    def initialize(file)
        @path = file
        @@all << self 
    end 

    def files
        file = Dir[@path+"/*"]
        file = file.map {|file| File.basename(file)}
        #binding.pry 
    end 

    def import
        files.each {|file| Song.new_by_filename(file)}
    end 

    def self.all
        @@all 
    end 

    #worked through this with Mitch

end 
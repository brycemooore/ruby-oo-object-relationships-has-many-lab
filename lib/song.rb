class Song

    @@all = []

    attr_reader :name
    attr_accessor :artist

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return
        end
        self.artist.name
    end 
end 
class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end 

    def add_song(song)
        song.artist = self
    end 
    
    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def songs
        Song.all.select{|song|
            song.artist == self
        }
    end 

    def self.all
        @@all
    end

    def self.song_count
        count = 0
        self.all.each{|artist|
            count += artist.songs.count
        }
        return count
    end

end
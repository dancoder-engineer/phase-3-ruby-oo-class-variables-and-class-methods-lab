class Song
    @@count = 0
    @@names = []
    @@artists = []
    @@genres = []

    attr_reader :name
    attr_reader :artist
    attr_reader :genre



    def initialize(name, artist, genre)
        @@count += 1
        @name=name
        @artist=artist
        @genre=genre
        @@names << name
        @@artists << artist
        @@genres << genre
    end

  
 
    def self.count
        return @@names.uniq.length
    end


    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        returnThis={}
        counts=@@genres.uniq
        counts.each do |i|
            howMany=0
            @@genres.each do |k|
                howMany += 1 if i == k
            end
            returnThis[i]=howMany
        end
        returnThis
    end

    def self.artist_count
        returnThis={}
        counts=@@artists.uniq
        counts.each do |i|
            howMany=0
            @@artists.each do |k|
                howMany += 1 if i == k
            end
            returnThis[i]=howMany
        end
        returnThis
    end
 

end


Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

Song.count
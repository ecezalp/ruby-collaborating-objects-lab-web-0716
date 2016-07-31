class Artist
attr_accessor :name

@@all = []
@@name_array = []

def initialize(name)
  @name = name
  @songs = []
  @@name_array << name
end

def songs
  @songs
end

def add_song(song)
  @songs << song
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name(artist_name)
  existing = self.all.detect do |artist|
    artist_name == artist.name
  end
  if existing == nil
    new_artist = Artist.new(artist_name)
    @name = name
    @@all << new_artist
  end
  if !existing
    new_artist
  else
    existing
  end
end

def print_songs
  @songs.each do |song|
    puts song.name
  end
end

end

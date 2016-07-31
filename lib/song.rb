
######### IMPORTANT NOTE ################################################
#
#     the last test FAILS (.new_by_filename) with a no method error
#     if you see this pls help
#
#########################################################################



class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    # file_name.slice!(".mp3")
    # file_name_array = file_name.split(" - ")
    # new_song = Song.new(file_name_array[1])  
    # new_song.artist=(Artist.find_or_create_by_name(file_name_array[0]))
    # new_song.artist.add_song(self)
    # new_song

    new_song_name = file_name.split(" - ")[1]
    new_artist_name = file_name.split(" - ")[0]
    song_obj = Song.new(new_song_name)
    artist_obj = Artist.find_or_create_by_name(new_artist_name)
    artist_obj.add_song(song_obj)
    song_obj


  end
end

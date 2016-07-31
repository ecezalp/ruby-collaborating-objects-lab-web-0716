class MP3Importer
  attr_reader :path

def initialize(path)
  @path = path
end

def files
  Dir.glob("#{path}/*.mp3").collect do |unformatted|
    unformatted.split("/")[4]
  end
end

def import
  Dir.glob("#{path}/*.mp3").each do |song_name|
    Song.new_by_filename(song_name)
  end
end



end
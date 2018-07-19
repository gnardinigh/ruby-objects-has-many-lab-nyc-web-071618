class Artist

  @@count=0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@count +=1
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
    @@count+=1
  end

  def self.song_count
    @@count
  end


end

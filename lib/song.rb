class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end

  def artist_name
    if @artist
      self.artist.name
    else
      nil
    end
  end






end

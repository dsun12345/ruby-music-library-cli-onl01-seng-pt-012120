class Artist 
  attr_accessor :name, :songs
  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all 
    @@all   
  end 
  
  def self.destroy_all 
    @@all.clear  
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(name)
    artist = Artist.new(name)
    @@all << artist 
    artist 
  end 
  
  def add_song(song)
    if song.artist == nil 
    song.artist = self 
    else
      nil 
    end 
    if songs.include?(song)
      nil
    else 
      songs << song 
    end 
  end 
  
  
end 
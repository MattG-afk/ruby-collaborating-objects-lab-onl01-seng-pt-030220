class Artist
    attr_accessor :artist, :name 
  
  @@all=[]
  
  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    name.detect {|artist| artist.name = artist_name}
      if self.artist.nil?
      self.artist = Artist.new
      else
      self.artist.name = name
      end
  end
    
  
    
end
  


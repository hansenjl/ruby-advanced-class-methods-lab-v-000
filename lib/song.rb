class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
   # Song.all << self
  end
  
  def self.create 
    # initialize a song 
    song = Song.new 
    # call the save method 
    song.save 
    # returns a new song that was created 
    song
  end
  
  def self.new_by_name(name)
    #instantiate a song with a name 
    song = Song.new
    song.name = name 
  end


end



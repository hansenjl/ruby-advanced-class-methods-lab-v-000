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
    song 
  end
  
  def self.create_by_name(name) 
    song = Song.new 
    song.name = name 
    song.save 
    song 
  end
  
  def self.find_by_name(search)
    Song.all.find {|song| song   }
    # iterate through @@all 
      # a match of a song w/ a name equal to search 
      #return the song we found 
  end
  


end



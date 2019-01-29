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
    song = Song.all.find {|song| song.name == search}
    
    # iterate through @@all 
      # a match of a song w/ a name equal to search 
      #return the song we found 
  end
  
  def self.find_or_create_by_name(search_name)
    find_by_name(search_name) || create_by_name(search_name) 
    
    # if find_by_name(search_name) == nil 
    #   create_by_name(search_name) 
    # else
    #   find_by_name(search_name)
    # end
  end
  


end



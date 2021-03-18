class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def self.new_by_filename(name)
    parsed_name = name.split(" - ")
    print parsed_name
    song = Song.new(parsed_name[1])
    puts song.name
    song.artist = Artist.find_or_create_by_name(parsed_name[0])
  end
  
  def artistname=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
  end
  
end
    
     
    
    
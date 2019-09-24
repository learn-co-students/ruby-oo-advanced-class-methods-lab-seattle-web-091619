class Song
  
  
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
    self
  end

  def self.create
    some_song = Song.new
    some_song.save
    some_song
  end

  def self.new_by_name(name)
   some_song = self.new
   some_song.name = name
   some_song
  end

  def self.create_by_name(name)
    some_song = self.new_by_name(name)
    some_song.save
    some_song
  end

  def self.find_by_name(name)
    self.all.find{|instance|

      instance.name == name
      
}
end


def self.find_or_create_by_name(name)
  
  if self.find_by_name(name)
    self.find_by_name(name)
  else
    self.create_by_name(name)
  end   
end


def self.alphabetical
  self.all.sort_by{|instance|
    instance.name
}
end

def self.new_from_filename(song)
  
  array = song.split(/[.-]/)
  song_name = array[1].strip
  artist_name = array[0].strip
  
  song = self.find_or_create_by_name(song_name)
  song.artist_name = artist_name
  song

end

def self.create_from_filename(song)
  some_song = self.new_from_filename(song)
  


end
  

def self.destroy_all
  self.all.clear

end
















end

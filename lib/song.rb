class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.new_by_name (nammu)
k = Song.new
k.name = nammu
k
  end

  def self.create_by_name (nammu, g = "")
k = Song.new
k.name = nammu
if g != ""
k.artist_name = g
end
  self.save(k)
k
  end

  def self.save(song = self)
    self.all << song
  end

  def self.find_by_name(holdname)
@@all.find do |rejectthis| rejectthis.name == holdname end
  end

  def self.create
    k =Song.new
    self.save( k)
return k
  end

  def self.find_or_create_by_name(namej)
    j = find_by_name(namej)
if  j 
self.find_by_name(namej)
else
self.create_by_name(namej)
end
  end
def self.alphabetical
@@all.sort_by do |sortable| sortable.name end
end

def self.new_from_filename(name)
   y = []
  k = []
k = name.split(".mp3")
y = k[0].split(" - ")
puts y[1]
song =create_by_name(y[1], y[0])
end

def self.create_from_filename(name)
   y = []
  k = []
k = name.split(".mp3")
y = k[0].split(" - ")
create_by_name(y[1], y[0])
end

def self.destroy_all
@@all.clear
end


end

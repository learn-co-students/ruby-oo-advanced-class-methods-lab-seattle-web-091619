class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    
  end

  def self.all
    @@all
  end

  def self.save(song)
    self.all << song
  end

  def self.create
    song = Song.new
    self.save(song)
    song
  end
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name, artist = "")
    song = Song.new
    if artist != ""
      song.artist_name = artist
    end
    song.name = name
    self.save(song)
    song
  end
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    found = find_by_name(name)
    if found
      find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort_by {|sng| sng.name}
  end

  def self.new_from_filename(file_name)
    artist_song = file_name.split(" - ")
    namae = artist_song[0]
    puts namae
    name_iso = artist_song[1].split(".mp3")
    n_string = name_iso[0]
    puts n_string
    songn = create_by_name(n_string, namae)
  end

  def self.create_from_filename(file_name)
    artist_song = file_name.split(" - ")
    namae = artist_song[0]
    puts namae
    name_iso = artist_song[1].split(".mp3")
    n_string = name_iso[0]
    puts n_string
    songn = create_by_name(n_string, namae)
  end
  def self.destroy_all
    @@all.clear
  end
end

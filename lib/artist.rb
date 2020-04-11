class Artist 

attr_accessor :name, :songs

def initialize(name)
  @name = name 
  #@songs = []
end 

#artist = Artist.new(name)
def songs 
  Song.all.select do |song|
    song.artist == self
end 
end 

def add_song(song)
  song.artist = self
end 

def add_song_by_name(song_name)
  singer = Song.new(song_name)
  add_song(singer)
end 

def song_count
  Song.all
end 
  


end
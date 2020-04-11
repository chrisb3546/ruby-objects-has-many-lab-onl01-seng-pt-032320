class Author 

attr_accessor :name, :posts

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

def self.song_count
  Song.all.length
end 
  


end
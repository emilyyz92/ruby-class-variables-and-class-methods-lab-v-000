require "pry"
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    #@@genre.each_with_index do |genre_name,index|
      #binding.pry
      #if genre_name == @@genre[index+1]
        #@@genre.delete(genre_name)
      #end
    #end
    @@genres
  end

end

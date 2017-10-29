require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.each_with_index do |genre_name,index|
      if genre_name == @@genres[index+1]
        @@genres.delete(@@genres[index])
      end
    end
    @@genres
  end

  def self.artists
    @@artists
  end
end

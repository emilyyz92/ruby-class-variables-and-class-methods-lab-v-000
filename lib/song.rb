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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gcount_h = {}
    @@genres.each do |genre|
      if gcount_h.keys.include?(genre)
        gcount_h[genre]+=1
      else
        gcount_h[genre] = 1
      end
    end
    gcount_h
  end
end

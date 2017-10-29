class Song
  attr_reader :name, :artist, :genre

  @@count = 0

  def initialize
    @@count += 1
    @@genre << @genre
  end

  def self.count
    @@count
  end

  @@genre = []

  def self.genres
    @@genre.each_with_index do |genre_name,index|
      if genre_name == @@genre[index+1]
        @@genre.delete(genre_name)
      end
    end
  end

end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    arr = []
    # Artist.all.each {|a| arr << a.name}
    Genre.first.songs.each {|s| arr << s.artist.name}
    arr
  end
end

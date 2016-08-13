class Playlist < ActiveRecord::Base

  belongs_to :admin, class_name: :User
  has_many :listeners, foreign_key: :user_id
  has_many :playlistsongs
  has_many :songs, through: :playlistsongs

  # returns an array of all of the songs in arrays of five
  def group_wej_songs
    self.songs.each_slice(5).to_a
  end

end

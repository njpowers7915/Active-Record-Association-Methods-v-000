class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genres.pluck(:name)
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake_id = self.artists.id
  end
end
class Song < ActiveRecord::Base
   has_many :singings
   has_many :karaoke_singers, through: :singings

   def self.find_by_artist(artist_name)
      Song.where("artist_name LIKE ?", "%#{artist_name}%")
   end

   def number_of_times_sung
      self.singings.count
   end
end

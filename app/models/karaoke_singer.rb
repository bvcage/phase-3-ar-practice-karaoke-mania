class KaraokeSinger < ActiveRecord::Base
   has_many :singings
   has_many :songs, through: :singings

   def sing(song)
      Singing.create(song_id: song.id, karaoke_singer_id: self.id)
   end

   def buy_drink
      self.update({number_of_drinks: self.number_of_drinks + 1})
   end

   def songs_by_artist(artist)
      self.songs.where(artist_name: artist)
   end

   def drinks_tab(price_per_drink)
      self.number_of_drinks * price_per_drink
   end

   def self.total_tab(price_per_drink)
      KaraokeSinger.sum("number_of_drinks") * price_per_drink
   end
end

class CreateSingings < ActiveRecord::Migration[5.2]
  def change
    create_table :singings do |t|
      t.integer :karaoke_singer_id
      t.integer :song_id
    end
  end
end

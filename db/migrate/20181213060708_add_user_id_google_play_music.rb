class AddUserIdGooglePlayMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :google_play_musics, :user_id, :interger
  end
end

# frozen_string_literal: true

class AddUserIdGooglePlayMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :google_play_musics, :user_id, :integer
  end
end

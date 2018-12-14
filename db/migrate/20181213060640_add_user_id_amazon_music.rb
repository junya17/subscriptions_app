# frozen_string_literal: true

class AddUserIdAmazonMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :amazon_musics, :user_id, :integer
  end
end

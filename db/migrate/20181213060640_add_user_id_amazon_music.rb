class AddUserIdAmazonMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :amazon_musics, :user_id, :interger

  end
end

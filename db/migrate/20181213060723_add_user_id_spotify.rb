class AddUserIdSpotify < ActiveRecord::Migration[5.2]
  def change
    add_column :spotifies, :user_id, :interger
  end
end

class AddUserIdPlayStationNetwork < ActiveRecord::Migration[5.2]
  def change
    add_column :play_station_networks, :user_id, :interger
  end
end

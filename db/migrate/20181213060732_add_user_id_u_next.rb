class AddUserIdUNext < ActiveRecord::Migration[5.2]
  def change
    add_column :unexts, :user_id, :integer
  end
end

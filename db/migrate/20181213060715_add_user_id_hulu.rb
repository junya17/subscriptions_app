# frozen_string_literal: true

class AddUserIdHulu < ActiveRecord::Migration[5.2]
  def change
    add_column :hulus, :user_id, :integer
  end
end

# frozen_string_literal: true

class CreateDAnimeStores < ActiveRecord::Migration[5.2]
  def change
    create_table :d_anime_stores do |t|
      t.integer :price
      t.date :issue_date
      t.integer :update_period
      t.string :status
      t.text :memo
      t.integer :user_id

      t.timestamps
    end
  end
end

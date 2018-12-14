# frozen_string_literal: true

class CreateNetflixes < ActiveRecord::Migration[5.2]
  def change
    create_table :netflixes do |t|
      t.integer :price
      t.date :date
      t.integer :update_period
      t.string :status
      t.text :memo
      t.integer :user_id

      t.timestamps
    end
  end
end

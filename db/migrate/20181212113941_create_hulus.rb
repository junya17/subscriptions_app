# frozen_string_literal: true

class CreateHulus < ActiveRecord::Migration[5.2]
  def change
    create_table :hulus do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

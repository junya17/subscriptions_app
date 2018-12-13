# frozen_string_literal: true

class CreateAmazons < ActiveRecord::Migration[5.2]
  def change
    create_table :amazons do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

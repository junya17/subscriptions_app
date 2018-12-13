# frozen_string_literal: true

class CreateGoogoles < ActiveRecord::Migration[5.2]
  def change
    create_table :googoles do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

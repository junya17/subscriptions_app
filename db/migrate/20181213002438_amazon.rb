# frozen_string_literal: true

class Amazon < ActiveRecord::Migration[5.2]
  def change
    drop_table :amazons
  end
end

# frozen_string_literal: true

class Hulu < ActiveRecord::Migration[5.2]
  def change
    drop_table :hulus
  end
end

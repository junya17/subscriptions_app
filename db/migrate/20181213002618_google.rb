# frozen_string_literal: true

class Google < ActiveRecord::Migration[5.2]
  def change
    drop_table :googles
  end
end

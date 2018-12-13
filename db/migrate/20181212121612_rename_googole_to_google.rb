# frozen_string_literal: true

class RenameGoogoleToGoogle < ActiveRecord::Migration[5.2]
  def change
    rename_table :googoles, :googles
  end
end

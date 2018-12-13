# frozen_string_literal: true

class RenameHuluToUNext < ActiveRecord::Migration[5.2]
  def change
    rename_table :u_nexts, :hulus
  end
end

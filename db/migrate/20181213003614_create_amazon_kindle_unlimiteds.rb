# frozen_string_literal: true

class CreateAmazonKindleUnlimiteds < ActiveRecord::Migration[5.2]
  def change
    create_table :amazon_kindle_unlimiteds do |t|
      t.integer :price
      t.date :issue_date
      t.integer :update_period
      t.string :status
      t.text :memo

      t.timestamps
    end
  end
end

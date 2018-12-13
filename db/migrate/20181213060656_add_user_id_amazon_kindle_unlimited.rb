class AddUserIdAmazonKindleUnlimited < ActiveRecord::Migration[5.2]
  def change
    add_column :amazon_kindle_unlimiteds, :user_id, :interger
  end
end

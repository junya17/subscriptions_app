class AddUserIdAmazonPrime < ActiveRecord::Migration[5.2]
  def change
    add_column :amazon_primes, :user_id, :integer
  end
end

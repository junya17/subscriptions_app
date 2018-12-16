require 'rails_helper'

RSpec.describe AmazonKindleUnlimited, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end


it "is valid with price and user_id" do
  @kindle = @user.amazon_kindle_unlimiteds.new(
    price: 100,
    issue_date: '2018-11-30',
    update_period: 30,
    status: '無料',
    memo: 'メモメモ',
    user_id: 1
  )
  expect(@kindle).to be_valid
end
end

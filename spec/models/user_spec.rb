require 'rails_helper'

RSpec.describe User, type: :model do
  it "" do
    user = User.new(
      email: 'aa@a',
      password: '123456',
    )
    expect(user).to be_valid
  end
end

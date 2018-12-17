require 'rails_helper'

describe AmazonKindleUnlimited do
	before do
		@user = FactoryBot.create(:user)
	end
	it "is valid with a firstname, lastname and email" do
	expect(FactoryBot.build(:kindle_2)).to be_valid
	end
end


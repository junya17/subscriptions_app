require 'rails_helper'

RSpec.describe AmazonKindleUnlimitedsController, type: :controller do
  before do
    @user = create(:user)
    @kindle = create(:amazon_kindle_unlimited)
  end


  describe "GET #show" do
    it 'リクエストが成功すること' do
      get :show, params: { id: @kindle }
      expect(response.status).to eq 302
    end
  end

end

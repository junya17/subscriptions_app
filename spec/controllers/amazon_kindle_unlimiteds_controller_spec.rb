require 'rails_helper'

describe AmazonKindleUnlimitedsController, type: :request do
	before do
		@user = create(:user)
		FactoryBot.create :kindle_2
		FactoryBot.create :kindle_3
	  end
	describe 'GET #index' do
	    it 'リクエストが成功すること' do
		get amazon_kindle_unlimiteds_url
		expect(response.status).to eq 302
	  end
	end

	describe 'GET #show' do
		context '存在する場合' do
			let(:kindle_2) { FactoryBot.create :kindle_2 }
		  it 'リクエストが成功すること' do
			get amazon_kindle_unlimited_url kindle_2.id , params: { id: kindle_2 }
			expect(response.status).to eq 302
		  end
		end
	end

	describe 'GET #new' do
		it 'リクエストが成功すること' do
		  get new_amazon_kindle_unlimited_url
		  expect(response.status).to eq 302
		end
	end	
	describe 'GET #edit' do
    let(:kindle_2) { FactoryBot.create :kindle_2 }

		it 'リクエストが成功すること' do
      get edit_amazon_kindle_unlimited_url kindle_2
      expect(response.status).to eq 302
    end
	end

	describe 'POST #create' do
    context 'パラメータが妥当な場合' do
      it 'リクエストが成功すること' do
        post amazon_kindle_unlimiteds_url, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited) }
        expect(response.status).to eq 302
			end
		end
	end

	describe 'PUT #update' do
    let(:kindle_2) { FactoryBot.create :kindle_2 }

    context 'パラメータが妥当な場合' do
      it 'リクエストが成功すること' do
        put amazon_kindle_unlimited_url kindle_2, params: {amazon_kindle_unlimited: FactoryBot.attributes_for(:kindle_3) }
        expect(response.status).to eq 302
			end
		end
	end

	describe 'DELETE #destroy' do
		let!(:kindle_2) { FactoryBot.create :kindle_2 }
    it 'リクエストが成功すること' do
      delete amazon_kindle_unlimited_url kindle_2
      expect(response.status).to eq 302
		end

		
	end


end
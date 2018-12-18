# frozen_string_literal: true

require 'rails_helper'

describe AmazonKindleUnlimitedsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @kindles = FactoryBot.create(:amazon_kindle_unlimited)
    sign_in @user
    FactoryBot.create :kindle_2
    FactoryBot.create :kindle_3
  end
  describe 'GET #index' do
    it 'リクエストが成功' do
      get :index
      expect(response.status).to eq 200
    end

    it '@kindleが取得' do
      get :index
      expect(assigns(:@kindle)).to eq @kindle
    end

    it 'indexテンプレートで表示' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    context 'ユーザーが存在する場合' do
      let(:kindle_2) { FactoryBot.create :kindle_2 }

      it 'リクエストが成功' do
        get :show, params: { id: kindle_2.id }
        expect(response.status).to eq 200
      end

      it 'showテンプレートで表示' do
        get :show, params: { id: kindle_2.id }
        expect(response).to render_template :show
      end

      it '@kindleを取得' do
        get :show, params: { id: kindle_2.id }
        expect(assigns(:@kindle)).to eq @kindle
      end
    end
  end

  describe 'GET #new' do
    it 'リクエストが成功' do
      get :new
      expect(response.status).to eq 200
    end

    it 'newテンプレートで表示' do
      get :new
      expect(response).to render_template :new
    end

    it 'newされていること' do
      get :new
      expect(assigns(:amazon_kindle_unlimited)).to_not be_nil
    end
  end

  describe 'GET #edit' do
    let(:kindle_2) { FactoryBot.create :kindle_2 }

    it 'リクエストが成功' do
      get :edit, params: { id: kindle_2 }
      expect(response.status).to eq 200
    end

    it 'editテンプレートを表示' do
      get :edit, params: { id: kindle_2 }
      expect(response).to render_template :edit
    end

    it '@kindleを取得 do
      get :show, params: { id: kindle_2 }
      expect(assigns(:@kindle)).to eq @kindle
    end
  end

  describe 'POST #create' do
    context 'パラメータが妥当な場合' do
      it 'リクエストが成功' do
        post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited) }
        expect(response.status).to eq 302
      end

      it '登録' do
        expect do
          post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited) }
        end.to change(AmazonKindleUnlimited, :count).by(1)
      end

      it 'リダイレクト' do
        post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited) }
        expect(response).to redirect_to root_url
      end
    end

    context 'パラメータが不正な場合' do
      it 'リクエストが成功' do
        post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(response.status).to eq 200
      end

      it '登録が失敗' do
        expect do
          post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        end.to_not change(AmazonKindleUnlimited, :count)
      end

      it 'newテンプレートで表示' do
        post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(response).to render_template :new
      end

      it 'エラーが表示' do
        post :create, params: { amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(assigns(:amazon_kindle_unlimited).errors.any?).to be_truthy
      end
    end
  end

  describe 'PUT #update' do
    let(:kindle_2) { FactoryBot.create :kindle_2 }

    context 'パラメータが妥当な場合' do
      it 'リクエストが成功する' do
				put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:kindle_3) }
        expect(response.status).to eq 302
      end

      it '更新される' do
        expect do
          put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:kindle_3) }
        end.to change { AmazonKindleUnlimited.find(kindle_2.id).price }.from(980).to(1980)
      end

      it 'リダイレクト' do
        put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:kindle_3) }
        expect(response).to redirect_to root_url
      end
    end

    context 'パラメータが不正な場合' do
      it 'リクエストが成功' do
        put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(response.status).to eq 200
      end

      it 'Priceが変更されない' do
        expect do
          put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        end.to_not change(AmazonKindleUnlimited.find(kindle_2.id), :price)
      end

      it 'テンプレートを表示' do
        put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(response).to render_template :edit
      end

      it 'エラーの表示' do
        put :update, params: { id: kindle_2, amazon_kindle_unlimited: FactoryBot.attributes_for(:amazon_kindle_unlimited, :invalid) }
        expect(assigns(:amazon_kindle_unlimited).errors.any?).to be_truthy
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:amazon_kindle_unlimited) { FactoryBot.create :amazon_kindle_unlimited }

    it 'リクエストが成功' do
      delete :destroy, params: { id: amazon_kindle_unlimited }
      expect(response.status).to eq 302
    end

    it '削除' do
      expect do
        delete :destroy, params: { id: amazon_kindle_unlimited }
      end.to change(AmazonKindleUnlimited, :count).by(-1)
    end

    it 'トップページにリダイレクト' do
      delete :destroy, params: { id: amazon_kindle_unlimited }
      expect(response).to redirect_to(root_url)
    end
  end
end

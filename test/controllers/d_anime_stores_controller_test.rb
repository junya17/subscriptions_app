# frozen_string_literal: true

require 'test_helper'

class DAnimeStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @d_anime_store = d_anime_stores(:one)
  end

  test 'should get index' do
    get d_anime_stores_url
    assert_response :success
  end

  test 'should get new' do
    get new_d_anime_store_url
    assert_response :success
  end

  test 'should create d_anime_store' do
    assert_difference('DAnimeStore.count') do
      post d_anime_stores_url, params: { d_anime_store: { date: @d_anime_store.date, memo: @d_anime_store.memo, price: @d_anime_store.price, status: @d_anime_store.status, update_period: @d_anime_store.update_period, user_id: @d_anime_store.user_id } }
    end

    assert_redirected_to d_anime_store_url(DAnimeStore.last)
  end

  test 'should show d_anime_store' do
    get d_anime_store_url(@d_anime_store)
    assert_response :success
  end

  test 'should get edit' do
    get edit_d_anime_store_url(@d_anime_store)
    assert_response :success
  end

  test 'should update d_anime_store' do
    patch d_anime_store_url(@d_anime_store), params: { d_anime_store: { date: @d_anime_store.date, memo: @d_anime_store.memo, price: @d_anime_store.price, status: @d_anime_store.status, update_period: @d_anime_store.update_period, user_id: @d_anime_store.user_id } }
    assert_redirected_to d_anime_store_url(@d_anime_store)
  end

  test 'should destroy d_anime_store' do
    assert_difference('DAnimeStore.count', -1) do
      delete d_anime_store_url(@d_anime_store)
    end

    assert_redirected_to d_anime_stores_url
  end
end

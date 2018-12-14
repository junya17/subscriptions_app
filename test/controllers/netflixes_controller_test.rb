# frozen_string_literal: true

require 'test_helper'

class NetflixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @netflix = netflixes(:one)
  end

  test 'should get index' do
    get netflixes_url
    assert_response :success
  end

  test 'should get new' do
    get new_netflix_url
    assert_response :success
  end

  test 'should create netflix' do
    assert_difference('Netflix.count') do
      post netflixes_url, params: { netflix: { date: @netflix.date, memo: @netflix.memo, price: @netflix.price, status: @netflix.status, update_period: @netflix.update_period, user_id: @netflix.user_id } }
    end

    assert_redirected_to netflix_url(Netflix.last)
  end

  test 'should show netflix' do
    get netflix_url(@netflix)
    assert_response :success
  end

  test 'should get edit' do
    get edit_netflix_url(@netflix)
    assert_response :success
  end

  test 'should update netflix' do
    patch netflix_url(@netflix), params: { netflix: { date: @netflix.date, memo: @netflix.memo, price: @netflix.price, status: @netflix.status, update_period: @netflix.update_period, user_id: @netflix.user_id } }
    assert_redirected_to netflix_url(@netflix)
  end

  test 'should destroy netflix' do
    assert_difference('Netflix.count', -1) do
      delete netflix_url(@netflix)
    end

    assert_redirected_to netflixes_url
  end
end

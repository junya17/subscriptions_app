# frozen_string_literal: true

require 'test_helper'

class YouTubePremiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @you_tube_premium = you_tube_premia(:one)
  end

  test 'should get index' do
    get you_tube_premia_url
    assert_response :success
  end

  test 'should get new' do
    get new_you_tube_premium_url
    assert_response :success
  end

  test 'should create you_tube_premium' do
    assert_difference('YouTubePremium.count') do
      post you_tube_premia_url, params: { you_tube_premium: { date: @you_tube_premium.date, memo: @you_tube_premium.memo, price: @you_tube_premium.price, status: @you_tube_premium.status, update_period: @you_tube_premium.update_period, user_id: @you_tube_premium.user_id } }
    end

    assert_redirected_to you_tube_premium_url(YouTubePremium.last)
  end

  test 'should show you_tube_premium' do
    get you_tube_premium_url(@you_tube_premium)
    assert_response :success
  end

  test 'should get edit' do
    get edit_you_tube_premium_url(@you_tube_premium)
    assert_response :success
  end

  test 'should update you_tube_premium' do
    patch you_tube_premium_url(@you_tube_premium), params: { you_tube_premium: { date: @you_tube_premium.date, memo: @you_tube_premium.memo, price: @you_tube_premium.price, status: @you_tube_premium.status, update_period: @you_tube_premium.update_period, user_id: @you_tube_premium.user_id } }
    assert_redirected_to you_tube_premium_url(@you_tube_premium)
  end

  test 'should destroy you_tube_premium' do
    assert_difference('YouTubePremium.count', -1) do
      delete you_tube_premium_url(@you_tube_premium)
    end

    assert_redirected_to you_tube_premia_url
  end
end

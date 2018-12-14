# frozen_string_literal: true

require 'test_helper'

class DTVsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @d_tv = d_tvs(:one)
  end

  test 'should get index' do
    get d_tvs_url
    assert_response :success
  end

  test 'should get new' do
    get new_d_tv_url
    assert_response :success
  end

  test 'should create d_tv' do
    assert_difference('DTv.count') do
      post d_tvs_url, params: { d_tv: { date: @d_tv.date, memo: @d_tv.memo, price: @d_tv.price, status: @d_tv.status, update_period: @d_tv.update_period, user_id: @d_tv.user_id } }
    end

    assert_redirected_to d_tv_url(DTv.last)
  end

  test 'should show d_tv' do
    get d_tv_url(@d_tv)
    assert_response :success
  end

  test 'should get edit' do
    get edit_d_tv_url(@d_tv)
    assert_response :success
  end

  test 'should update d_tv' do
    patch d_tv_url(@d_tv), params: { d_tv: { date: @d_tv.date, memo: @d_tv.memo, price: @d_tv.price, status: @d_tv.status, update_period: @d_tv.update_period, user_id: @d_tv.user_id } }
    assert_redirected_to d_tv_url(@d_tv)
  end

  test 'should destroy d_tv' do
    assert_difference('DTv.count', -1) do
      delete d_tv_url(@d_tv)
    end

    assert_redirected_to d_tvs_url
  end
end

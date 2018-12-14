# frozen_string_literal: true

require 'test_helper'

class FoDsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fod = fods(:one)
  end

  test 'should get index' do
    get fods_url
    assert_response :success
  end

  test 'should get new' do
    get new_fod_url
    assert_response :success
  end

  test 'should create fod' do
    assert_difference('Fod.count') do
      post fods_url, params: { fod: { date: @fod.date, memo: @fod.memo, price: @fod.price, status: @fod.status, update_period: @fod.update_period, user_id: @fod.user_id } }
    end

    assert_redirected_to fod_url(Fod.last)
  end

  test 'should show fod' do
    get fod_url(@fod)
    assert_response :success
  end

  test 'should get edit' do
    get edit_fod_url(@fod)
    assert_response :success
  end

  test 'should update fod' do
    patch fod_url(@fod), params: { fod: { date: @fod.date, memo: @fod.memo, price: @fod.price, status: @fod.status, update_period: @fod.update_period, user_id: @fod.user_id } }
    assert_redirected_to fod_url(@fod)
  end

  test 'should destroy fod' do
    assert_difference('Fod.count', -1) do
      delete fod_url(@fod)
    end

    assert_redirected_to fods_url
  end
end

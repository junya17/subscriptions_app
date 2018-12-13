# frozen_string_literal: true

require 'test_helper'

class UnextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unext = unexts(:one)
  end

  test 'should get index' do
    get unexts_url
    assert_response :success
  end

  test 'should get new' do
    get new_unext_url
    assert_response :success
  end

  test 'should create unext' do
    assert_difference('Unext.count') do
      post unexts_url, params: { unext: { issue_date: @unext.issue_date, memo: @unext.memo, price: @unext.price, status: @unext.status, update_period: @unext.update_period } }
    end

    assert_redirected_to unext_url(Unext.last)
  end

  test 'should show unext' do
    get unext_url(@unext)
    assert_response :success
  end

  test 'should get edit' do
    get edit_unext_url(@unext)
    assert_response :success
  end

  test 'should update unext' do
    patch unext_url(@unext), params: { unext: { issue_date: @unext.issue_date, memo: @unext.memo, price: @unext.price, status: @unext.status, update_period: @unext.update_period } }
    assert_redirected_to unext_url(@unext)
  end

  test 'should destroy unext' do
    assert_difference('Unext.count', -1) do
      delete unext_url(@unext)
    end

    assert_redirected_to unexts_url
  end
end

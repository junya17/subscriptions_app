# frozen_string_literal: true

require 'test_helper'

class AmazonKindleUnlimitedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazon_kindle_unlimited = amazon_kindle_unlimiteds(:one)
  end

  test 'should get index' do
    get amazon_kindle_unlimiteds_url
    assert_response :success
  end

  test 'should get new' do
    get new_amazon_kindle_unlimited_url
    assert_response :success
  end

  test 'should create amazon_kindle_unlimited' do
    assert_difference('AmazonKindleUnlimited.count') do
      post amazon_kindle_unlimiteds_url, params: { amazon_kindle_unlimited: { issue_date: @amazon_kindle_unlimited.issue_date, memo: @amazon_kindle_unlimited.memo, price: @amazon_kindle_unlimited.price, status: @amazon_kindle_unlimited.status, update_period: @amazon_kindle_unlimited.update_period } }
    end

    assert_redirected_to amazon_kindle_unlimited_url(AmazonKindleUnlimited.last)
  end

  test 'should show amazon_kindle_unlimited' do
    get amazon_kindle_unlimited_url(@amazon_kindle_unlimited)
    assert_response :success
  end

  test 'should get edit' do
    get edit_amazon_kindle_unlimited_url(@amazon_kindle_unlimited)
    assert_response :success
  end

  test 'should update amazon_kindle_unlimited' do
    patch amazon_kindle_unlimited_url(@amazon_kindle_unlimited), params: { amazon_kindle_unlimited: { issue_date: @amazon_kindle_unlimited.issue_date, memo: @amazon_kindle_unlimited.memo, price: @amazon_kindle_unlimited.price, status: @amazon_kindle_unlimited.status, update_period: @amazon_kindle_unlimited.update_period } }
    assert_redirected_to amazon_kindle_unlimited_url(@amazon_kindle_unlimited)
  end

  test 'should destroy amazon_kindle_unlimited' do
    assert_difference('AmazonKindleUnlimited.count', -1) do
      delete amazon_kindle_unlimited_url(@amazon_kindle_unlimited)
    end

    assert_redirected_to amazon_kindle_unlimiteds_url
  end
end

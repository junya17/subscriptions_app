# frozen_string_literal: true

require 'test_helper'

class AmazonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazon = amazons(:one)
  end

  test 'should get index' do
    get amazons_url
    assert_response :success
  end

  test 'should get new' do
    get new_amazon_url
    assert_response :success
  end

  test 'should create amazon' do
    assert_difference('Amazon.count') do
      post amazons_url, params: { amazon: { name: @amazon.name, price: @amazon.price } }
    end

    assert_redirected_to amazon_url(Amazon.last)
  end

  test 'should show amazon' do
    get amazon_url(@amazon)
    assert_response :success
  end

  test 'should get edit' do
    get edit_amazon_url(@amazon)
    assert_response :success
  end

  test 'should update amazon' do
    patch amazon_url(@amazon), params: { amazon: { name: @amazon.name, price: @amazon.price } }
    assert_redirected_to amazon_url(@amazon)
  end

  test 'should destroy amazon' do
    assert_difference('Amazon.count', -1) do
      delete amazon_url(@amazon)
    end

    assert_redirected_to amazons_url
  end
end

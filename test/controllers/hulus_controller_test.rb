# frozen_string_literal: true

require 'test_helper'

class HulusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hulu = hulus(:one)
  end

  test 'should get index' do
    get hulus_url
    assert_response :success
  end

  test 'should get new' do
    get new_hulu_url
    assert_response :success
  end

  test 'should create hulu' do
    assert_difference('Hulu.count') do
      post hulus_url, params: { hulu: { name: @hulu.name, price: @hulu.price } }
    end

    assert_redirected_to hulu_url(Hulu.last)
  end

  test 'should show hulu' do
    get hulu_url(@hulu)
    assert_response :success
  end

  test 'should get edit' do
    get edit_hulu_url(@hulu)
    assert_response :success
  end

  test 'should update hulu' do
    patch hulu_url(@hulu), params: { hulu: { name: @hulu.name, price: @hulu.price } }
    assert_redirected_to hulu_url(@hulu)
  end

  test 'should destroy hulu' do
    assert_difference('Hulu.count', -1) do
      delete hulu_url(@hulu)
    end

    assert_redirected_to hulus_url
  end
end

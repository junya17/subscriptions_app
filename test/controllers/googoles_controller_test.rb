# frozen_string_literal: true

require 'test_helper'

class GoogolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @googole = googoles(:one)
  end

  test 'should get index' do
    get googoles_url
    assert_response :success
  end

  test 'should get new' do
    get new_googole_url
    assert_response :success
  end

  test 'should create googole' do
    assert_difference('Googole.count') do
      post googoles_url, params: { googole: { name: @googole.name, price: @googole.price } }
    end

    assert_redirected_to googole_url(Googole.last)
  end

  test 'should show googole' do
    get googole_url(@googole)
    assert_response :success
  end

  test 'should get edit' do
    get edit_googole_url(@googole)
    assert_response :success
  end

  test 'should update googole' do
    patch googole_url(@googole), params: { googole: { name: @googole.name, price: @googole.price } }
    assert_redirected_to googole_url(@googole)
  end

  test 'should destroy googole' do
    assert_difference('Googole.count', -1) do
      delete googole_url(@googole)
    end

    assert_redirected_to googoles_url
  end
end

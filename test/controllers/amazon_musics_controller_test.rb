# frozen_string_literal: true

require 'test_helper'

class AmazonMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazon_music = amazon_musics(:one)
  end

  test 'should get index' do
    get amazon_musics_url
    assert_response :success
  end

  test 'should get new' do
    get new_amazon_music_url
    assert_response :success
  end

  test 'should create amazon_music' do
    assert_difference('AmazonMusic.count') do
      post amazon_musics_url, params: { amazon_music: { issue_date: @amazon_music.issue_date, memo: @amazon_music.memo, price: @amazon_music.price, status: @amazon_music.status, update_period: @amazon_music.update_period } }
    end

    assert_redirected_to amazon_music_url(AmazonMusic.last)
  end

  test 'should show amazon_music' do
    get amazon_music_url(@amazon_music)
    assert_response :success
  end

  test 'should get edit' do
    get edit_amazon_music_url(@amazon_music)
    assert_response :success
  end

  test 'should update amazon_music' do
    patch amazon_music_url(@amazon_music), params: { amazon_music: { issue_date: @amazon_music.issue_date, memo: @amazon_music.memo, price: @amazon_music.price, status: @amazon_music.status, update_period: @amazon_music.update_period } }
    assert_redirected_to amazon_music_url(@amazon_music)
  end

  test 'should destroy amazon_music' do
    assert_difference('AmazonMusic.count', -1) do
      delete amazon_music_url(@amazon_music)
    end

    assert_redirected_to amazon_musics_url
  end
end

# frozen_string_literal: true

require 'test_helper'

class AppleMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apple_music = apple_musics(:one)
  end

  test 'should get index' do
    get apple_musics_url
    assert_response :success
  end

  test 'should get new' do
    get new_apple_music_url
    assert_response :success
  end

  test 'should create apple_music' do
    assert_difference('AppleMusic.count') do
      post apple_musics_url, params: { apple_music: { date: @apple_music.date, memo: @apple_music.memo, price: @apple_music.price, status: @apple_music.status, update_period: @apple_music.update_period, user_id: @apple_music.user_id } }
    end

    assert_redirected_to apple_music_url(AppleMusic.last)
  end

  test 'should show apple_music' do
    get apple_music_url(@apple_music)
    assert_response :success
  end

  test 'should get edit' do
    get edit_apple_music_url(@apple_music)
    assert_response :success
  end

  test 'should update apple_music' do
    patch apple_music_url(@apple_music), params: { apple_music: { date: @apple_music.date, memo: @apple_music.memo, price: @apple_music.price, status: @apple_music.status, update_period: @apple_music.update_period, user_id: @apple_music.user_id } }
    assert_redirected_to apple_music_url(@apple_music)
  end

  test 'should destroy apple_music' do
    assert_difference('AppleMusic.count', -1) do
      delete apple_music_url(@apple_music)
    end

    assert_redirected_to apple_musics_url
  end
end

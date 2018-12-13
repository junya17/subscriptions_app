# frozen_string_literal: true

require 'test_helper'

class GooglePlayMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @google_play_music = google_play_musics(:one)
  end

  test 'should get index' do
    get google_play_musics_url
    assert_response :success
  end

  test 'should get new' do
    get new_google_play_music_url
    assert_response :success
  end

  test 'should create google_play_music' do
    assert_difference('GooglePlayMusic.count') do
      post google_play_musics_url, params: { google_play_music: { issue_date: @google_play_music.issue_date, memo: @google_play_music.memo, price: @google_play_music.price, status: @google_play_music.status, update_period: @google_play_music.update_period } }
    end

    assert_redirected_to google_play_music_url(GooglePlayMusic.last)
  end

  test 'should show google_play_music' do
    get google_play_music_url(@google_play_music)
    assert_response :success
  end

  test 'should get edit' do
    get edit_google_play_music_url(@google_play_music)
    assert_response :success
  end

  test 'should update google_play_music' do
    patch google_play_music_url(@google_play_music), params: { google_play_music: { issue_date: @google_play_music.issue_date, memo: @google_play_music.memo, price: @google_play_music.price, status: @google_play_music.status, update_period: @google_play_music.update_period } }
    assert_redirected_to google_play_music_url(@google_play_music)
  end

  test 'should destroy google_play_music' do
    assert_difference('GooglePlayMusic.count', -1) do
      delete google_play_music_url(@google_play_music)
    end

    assert_redirected_to google_play_musics_url
  end
end

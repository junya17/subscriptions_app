# frozen_string_literal: true

require 'test_helper'

class LineMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_music = line_musics(:one)
  end

  test 'should get index' do
    get line_musics_url
    assert_response :success
  end

  test 'should get new' do
    get new_line_music_url
    assert_response :success
  end

  test 'should create line_music' do
    assert_difference('LineMusic.count') do
      post line_musics_url, params: { line_music: { date: @line_music.date, memo: @line_music.memo, price: @line_music.price, status: @line_music.status, update_period: @line_music.update_period, user_id: @line_music.user_id } }
    end

    assert_redirected_to line_music_url(LineMusic.last)
  end

  test 'should show line_music' do
    get line_music_url(@line_music)
    assert_response :success
  end

  test 'should get edit' do
    get edit_line_music_url(@line_music)
    assert_response :success
  end

  test 'should update line_music' do
    patch line_music_url(@line_music), params: { line_music: { date: @line_music.date, memo: @line_music.memo, price: @line_music.price, status: @line_music.status, update_period: @line_music.update_period, user_id: @line_music.user_id } }
    assert_redirected_to line_music_url(@line_music)
  end

  test 'should destroy line_music' do
    assert_difference('LineMusic.count', -1) do
      delete line_music_url(@line_music)
    end

    assert_redirected_to line_musics_url
  end
end

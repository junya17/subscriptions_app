# frozen_string_literal: true

require 'test_helper'

class AuVideoPassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @au_video_pass = au_video_passes(:one)
  end

  test 'should get index' do
    get au_video_passes_url
    assert_response :success
  end

  test 'should get new' do
    get new_au_video_pass_url
    assert_response :success
  end

  test 'should create au_video_pass' do
    assert_difference('AuVideoPass.count') do
      post au_video_passes_url, params: { au_video_pass: { date: @au_video_pass.date, memo: @au_video_pass.memo, price: @au_video_pass.price, status: @au_video_pass.status, update_period: @au_video_pass.update_period, user_id: @au_video_pass.user_id } }
    end

    assert_redirected_to au_video_pass_url(AuVideoPass.last)
  end

  test 'should show au_video_pass' do
    get au_video_pass_url(@au_video_pass)
    assert_response :success
  end

  test 'should get edit' do
    get edit_au_video_pass_url(@au_video_pass)
    assert_response :success
  end

  test 'should update au_video_pass' do
    patch au_video_pass_url(@au_video_pass), params: { au_video_pass: { date: @au_video_pass.date, memo: @au_video_pass.memo, price: @au_video_pass.price, status: @au_video_pass.status, update_period: @au_video_pass.update_period, user_id: @au_video_pass.user_id } }
    assert_redirected_to au_video_pass_url(@au_video_pass)
  end

  test 'should destroy au_video_pass' do
    assert_difference('AuVideoPass.count', -1) do
      delete au_video_pass_url(@au_video_pass)
    end

    assert_redirected_to au_video_passes_url
  end
end

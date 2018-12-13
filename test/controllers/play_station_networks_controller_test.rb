# frozen_string_literal: true

require 'test_helper'

class PlayStationNetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @play_station_network = play_station_networks(:one)
  end

  test 'should get index' do
    get play_station_networks_url
    assert_response :success
  end

  test 'should get new' do
    get new_play_station_network_url
    assert_response :success
  end

  test 'should create play_station_network' do
    assert_difference('PlayStationNetwork.count') do
      post play_station_networks_url, params: { play_station_network: { issue_date: @play_station_network.issue_date, memo: @play_station_network.memo, price: @play_station_network.price, status: @play_station_network.status, update_period: @play_station_network.update_period } }
    end

    assert_redirected_to play_station_network_url(PlayStationNetwork.last)
  end

  test 'should show play_station_network' do
    get play_station_network_url(@play_station_network)
    assert_response :success
  end

  test 'should get edit' do
    get edit_play_station_network_url(@play_station_network)
    assert_response :success
  end

  test 'should update play_station_network' do
    patch play_station_network_url(@play_station_network), params: { play_station_network: { issue_date: @play_station_network.issue_date, memo: @play_station_network.memo, price: @play_station_network.price, status: @play_station_network.status, update_period: @play_station_network.update_period } }
    assert_redirected_to play_station_network_url(@play_station_network)
  end

  test 'should destroy play_station_network' do
    assert_difference('PlayStationNetwork.count', -1) do
      delete play_station_network_url(@play_station_network)
    end

    assert_redirected_to play_station_networks_url
  end
end

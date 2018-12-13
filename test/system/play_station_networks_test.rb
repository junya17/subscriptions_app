# frozen_string_literal: true

require 'application_system_test_case'

class PlayStationNetworksTest < ApplicationSystemTestCase
  setup do
    @play_station_network = play_station_networks(:one)
  end

  test 'visiting the index' do
    visit play_station_networks_url
    assert_selector 'h1', text: 'Play Station Networks'
  end

  test 'creating a Play station network' do
    visit play_station_networks_url
    click_on 'New Play Station Network'

    fill_in 'Issue date', with: @play_station_network.issue_date
    fill_in 'Memo', with: @play_station_network.memo
    fill_in 'Price', with: @play_station_network.price
    fill_in 'Status', with: @play_station_network.status
    fill_in 'Update period', with: @play_station_network.update_period
    click_on 'Create Play station network'

    assert_text 'Play station network was successfully created'
    click_on 'Back'
  end

  test 'updating a Play station network' do
    visit play_station_networks_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @play_station_network.issue_date
    fill_in 'Memo', with: @play_station_network.memo
    fill_in 'Price', with: @play_station_network.price
    fill_in 'Status', with: @play_station_network.status
    fill_in 'Update period', with: @play_station_network.update_period
    click_on 'Update Play station network'

    assert_text 'Play station network was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Play station network' do
    visit play_station_networks_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Play station network was successfully destroyed'
  end
end

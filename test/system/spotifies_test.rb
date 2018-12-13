# frozen_string_literal: true

require 'application_system_test_case'

class SpotifiesTest < ApplicationSystemTestCase
  setup do
    @spotify = spotifies(:one)
  end

  test 'visiting the index' do
    visit spotifies_url
    assert_selector 'h1', text: 'Spotifies'
  end

  test 'creating a Spotify' do
    visit spotifies_url
    click_on 'New Spotify'

    fill_in 'Issue date', with: @spotify.issue_date
    fill_in 'Memo', with: @spotify.memo
    fill_in 'Price', with: @spotify.price
    fill_in 'Status', with: @spotify.status
    fill_in 'Update period', with: @spotify.update_period
    click_on 'Create Spotify'

    assert_text 'Spotify was successfully created'
    click_on 'Back'
  end

  test 'updating a Spotify' do
    visit spotifies_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @spotify.issue_date
    fill_in 'Memo', with: @spotify.memo
    fill_in 'Price', with: @spotify.price
    fill_in 'Status', with: @spotify.status
    fill_in 'Update period', with: @spotify.update_period
    click_on 'Update Spotify'

    assert_text 'Spotify was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Spotify' do
    visit spotifies_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Spotify was successfully destroyed'
  end
end

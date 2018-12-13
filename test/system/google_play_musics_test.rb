# frozen_string_literal: true

require 'application_system_test_case'

class GooglePlayMusicsTest < ApplicationSystemTestCase
  setup do
    @google_play_music = google_play_musics(:one)
  end

  test 'visiting the index' do
    visit google_play_musics_url
    assert_selector 'h1', text: 'Google Play Musics'
  end

  test 'creating a Google play music' do
    visit google_play_musics_url
    click_on 'New Google Play Music'

    fill_in 'Issue date', with: @google_play_music.issue_date
    fill_in 'Memo', with: @google_play_music.memo
    fill_in 'Price', with: @google_play_music.price
    fill_in 'Status', with: @google_play_music.status
    fill_in 'Update period', with: @google_play_music.update_period
    click_on 'Create Google play music'

    assert_text 'Google play music was successfully created'
    click_on 'Back'
  end

  test 'updating a Google play music' do
    visit google_play_musics_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @google_play_music.issue_date
    fill_in 'Memo', with: @google_play_music.memo
    fill_in 'Price', with: @google_play_music.price
    fill_in 'Status', with: @google_play_music.status
    fill_in 'Update period', with: @google_play_music.update_period
    click_on 'Update Google play music'

    assert_text 'Google play music was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Google play music' do
    visit google_play_musics_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Google play music was successfully destroyed'
  end
end

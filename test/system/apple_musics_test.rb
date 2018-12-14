# frozen_string_literal: true

require 'application_system_test_case'

class AppleMusicsTest < ApplicationSystemTestCase
  setup do
    @apple_music = apple_musics(:one)
  end

  test 'visiting the index' do
    visit apple_musics_url
    assert_selector 'h1', text: 'Apple Musics'
  end

  test 'creating a Apple music' do
    visit apple_musics_url
    click_on 'New Apple Music'

    fill_in 'Date', with: @apple_music.date
    fill_in 'Memo', with: @apple_music.memo
    fill_in 'Price', with: @apple_music.price
    fill_in 'Status', with: @apple_music.status
    fill_in 'Update period', with: @apple_music.update_period
    fill_in 'User', with: @apple_music.user_id
    click_on 'Create Apple music'

    assert_text 'Apple music was successfully created'
    click_on 'Back'
  end

  test 'updating a Apple music' do
    visit apple_musics_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @apple_music.date
    fill_in 'Memo', with: @apple_music.memo
    fill_in 'Price', with: @apple_music.price
    fill_in 'Status', with: @apple_music.status
    fill_in 'Update period', with: @apple_music.update_period
    fill_in 'User', with: @apple_music.user_id
    click_on 'Update Apple music'

    assert_text 'Apple music was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Apple music' do
    visit apple_musics_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Apple music was successfully destroyed'
  end
end

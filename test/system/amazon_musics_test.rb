# frozen_string_literal: true

require 'application_system_test_case'

class AmazonMusicsTest < ApplicationSystemTestCase
  setup do
    @amazon_music = amazon_musics(:one)
  end

  test 'visiting the index' do
    visit amazon_musics_url
    assert_selector 'h1', text: 'Amazon Musics'
  end

  test 'creating a Amazon music' do
    visit amazon_musics_url
    click_on 'New Amazon Music'

    fill_in 'Issue date', with: @amazon_music.issue_date
    fill_in 'Memo', with: @amazon_music.memo
    fill_in 'Price', with: @amazon_music.price
    fill_in 'Status', with: @amazon_music.status
    fill_in 'Update period', with: @amazon_music.update_period
    click_on 'Create Amazon music'

    assert_text 'Amazon music was successfully created'
    click_on 'Back'
  end

  test 'updating a Amazon music' do
    visit amazon_musics_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @amazon_music.issue_date
    fill_in 'Memo', with: @amazon_music.memo
    fill_in 'Price', with: @amazon_music.price
    fill_in 'Status', with: @amazon_music.status
    fill_in 'Update period', with: @amazon_music.update_period
    click_on 'Update Amazon music'

    assert_text 'Amazon music was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Amazon music' do
    visit amazon_musics_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Amazon music was successfully destroyed'
  end
end

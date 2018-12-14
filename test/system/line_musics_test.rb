# frozen_string_literal: true

require 'application_system_test_case'

class LineMusicsTest < ApplicationSystemTestCase
  setup do
    @line_music = line_musics(:one)
  end

  test 'visiting the index' do
    visit line_musics_url
    assert_selector 'h1', text: 'Line Musics'
  end

  test 'creating a Line music' do
    visit line_musics_url
    click_on 'New Line Music'

    fill_in 'Date', with: @line_music.date
    fill_in 'Memo', with: @line_music.memo
    fill_in 'Price', with: @line_music.price
    fill_in 'Status', with: @line_music.status
    fill_in 'Update period', with: @line_music.update_period
    fill_in 'User', with: @line_music.user_id
    click_on 'Create Line music'

    assert_text 'Line music was successfully created'
    click_on 'Back'
  end

  test 'updating a Line music' do
    visit line_musics_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @line_music.date
    fill_in 'Memo', with: @line_music.memo
    fill_in 'Price', with: @line_music.price
    fill_in 'Status', with: @line_music.status
    fill_in 'Update period', with: @line_music.update_period
    fill_in 'User', with: @line_music.user_id
    click_on 'Update Line music'

    assert_text 'Line music was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Line music' do
    visit line_musics_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Line music was successfully destroyed'
  end
end

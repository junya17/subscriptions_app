# frozen_string_literal: true

require 'application_system_test_case'

class AuVideoPassesTest < ApplicationSystemTestCase
  setup do
    @au_video_pass = au_video_passes(:one)
  end

  test 'visiting the index' do
    visit au_video_passes_url
    assert_selector 'h1', text: 'Au Video Passes'
  end

  test 'creating a Au video pass' do
    visit au_video_passes_url
    click_on 'New Au Video Pass'

    fill_in 'Date', with: @au_video_pass.date
    fill_in 'Memo', with: @au_video_pass.memo
    fill_in 'Price', with: @au_video_pass.price
    fill_in 'Status', with: @au_video_pass.status
    fill_in 'Update period', with: @au_video_pass.update_period
    fill_in 'User', with: @au_video_pass.user_id
    click_on 'Create Au video pass'

    assert_text 'Au video pass was successfully created'
    click_on 'Back'
  end

  test 'updating a Au video pass' do
    visit au_video_passes_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @au_video_pass.date
    fill_in 'Memo', with: @au_video_pass.memo
    fill_in 'Price', with: @au_video_pass.price
    fill_in 'Status', with: @au_video_pass.status
    fill_in 'Update period', with: @au_video_pass.update_period
    fill_in 'User', with: @au_video_pass.user_id
    click_on 'Update Au video pass'

    assert_text 'Au video pass was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Au video pass' do
    visit au_video_passes_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Au video pass was successfully destroyed'
  end
end

# frozen_string_literal: true

require 'application_system_test_case'

class FodsTest < ApplicationSystemTestCase
  setup do
    @fod = fods(:one)
  end

  test 'visiting the index' do
    visit fods_url
    assert_selector 'h1', text: 'Fods'
  end

  test 'creating a Fod' do
    visit fods_url
    click_on 'New Fod'

    fill_in 'Date', with: @fod.date
    fill_in 'Memo', with: @fod.memo
    fill_in 'Price', with: @fod.price
    fill_in 'Status', with: @fod.status
    fill_in 'Update period', with: @fod.update_period
    fill_in 'User', with: @fod.user_id
    click_on 'Create Fod'

    assert_text 'Fod was successfully created'
    click_on 'Back'
  end

  test 'updating a Fod' do
    visit fods_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @fod.date
    fill_in 'Memo', with: @fod.memo
    fill_in 'Price', with: @fod.price
    fill_in 'Status', with: @fod.status
    fill_in 'Update period', with: @fod.update_period
    fill_in 'User', with: @fod.user_id
    click_on 'Update Fod'

    assert_text 'Fod was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Fod' do
    visit fods_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Fod was successfully destroyed'
  end
end

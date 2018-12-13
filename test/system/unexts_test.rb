# frozen_string_literal: true

require 'application_system_test_case'

class UnextsTest < ApplicationSystemTestCase
  setup do
    @unext = unexts(:one)
  end

  test 'visiting the index' do
    visit unexts_url
    assert_selector 'h1', text: 'Unexts'
  end

  test 'creating a Unext' do
    visit unexts_url
    click_on 'New Unext'

    fill_in 'Issue date', with: @unext.issue_date
    fill_in 'Memo', with: @unext.memo
    fill_in 'Price', with: @unext.price
    fill_in 'Status', with: @unext.status
    fill_in 'Update period', with: @unext.update_period
    click_on 'Create Unext'

    assert_text 'Unext was successfully created'
    click_on 'Back'
  end

  test 'updating a Unext' do
    visit unexts_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @unext.issue_date
    fill_in 'Memo', with: @unext.memo
    fill_in 'Price', with: @unext.price
    fill_in 'Status', with: @unext.status
    fill_in 'Update period', with: @unext.update_period
    click_on 'Update Unext'

    assert_text 'Unext was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Unext' do
    visit unexts_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Unext was successfully destroyed'
  end
end

# frozen_string_literal: true

require 'application_system_test_case'

class YouTubePremiaTest < ApplicationSystemTestCase
  setup do
    @you_tube_premium = you_tube_premia(:one)
  end

  test 'visiting the index' do
    visit you_tube_premia_url
    assert_selector 'h1', text: 'You Tube Premia'
  end

  test 'creating a You tube premium' do
    visit you_tube_premia_url
    click_on 'New You Tube Premium'

    fill_in 'Date', with: @you_tube_premium.date
    fill_in 'Memo', with: @you_tube_premium.memo
    fill_in 'Price', with: @you_tube_premium.price
    fill_in 'Status', with: @you_tube_premium.status
    fill_in 'Update period', with: @you_tube_premium.update_period
    fill_in 'User', with: @you_tube_premium.user_id
    click_on 'Create You tube premium'

    assert_text 'You tube premium was successfully created'
    click_on 'Back'
  end

  test 'updating a You tube premium' do
    visit you_tube_premia_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @you_tube_premium.date
    fill_in 'Memo', with: @you_tube_premium.memo
    fill_in 'Price', with: @you_tube_premium.price
    fill_in 'Status', with: @you_tube_premium.status
    fill_in 'Update period', with: @you_tube_premium.update_period
    fill_in 'User', with: @you_tube_premium.user_id
    click_on 'Update You tube premium'

    assert_text 'You tube premium was successfully updated'
    click_on 'Back'
  end

  test 'destroying a You tube premium' do
    visit you_tube_premia_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'You tube premium was successfully destroyed'
  end
end

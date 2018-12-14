# frozen_string_literal: true

require 'application_system_test_case'

class NetflixesTest < ApplicationSystemTestCase
  setup do
    @netflix = netflixes(:one)
  end

  test 'visiting the index' do
    visit netflixes_url
    assert_selector 'h1', text: 'Netflixes'
  end

  test 'creating a Netflix' do
    visit netflixes_url
    click_on 'New Netflix'

    fill_in 'Date', with: @netflix.date
    fill_in 'Memo', with: @netflix.memo
    fill_in 'Price', with: @netflix.price
    fill_in 'Status', with: @netflix.status
    fill_in 'Update period', with: @netflix.update_period
    fill_in 'User', with: @netflix.user_id
    click_on 'Create Netflix'

    assert_text 'Netflix was successfully created'
    click_on 'Back'
  end

  test 'updating a Netflix' do
    visit netflixes_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @netflix.date
    fill_in 'Memo', with: @netflix.memo
    fill_in 'Price', with: @netflix.price
    fill_in 'Status', with: @netflix.status
    fill_in 'Update period', with: @netflix.update_period
    fill_in 'User', with: @netflix.user_id
    click_on 'Update Netflix'

    assert_text 'Netflix was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Netflix' do
    visit netflixes_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Netflix was successfully destroyed'
  end
end

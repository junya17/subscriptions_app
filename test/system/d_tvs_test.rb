# frozen_string_literal: true

require 'application_system_test_case'

class DTvsTest < ApplicationSystemTestCase
  setup do
    @d_tv = d_tvs(:one)
  end

  test 'visiting the index' do
    visit d_tvs_url
    assert_selector 'h1', text: 'D Tvs'
  end

  test 'creating a D tv' do
    visit d_tvs_url
    click_on 'New D Tv'

    fill_in 'Date', with: @d_tv.date
    fill_in 'Memo', with: @d_tv.memo
    fill_in 'Price', with: @d_tv.price
    fill_in 'Status', with: @d_tv.status
    fill_in 'Update period', with: @d_tv.update_period
    fill_in 'User', with: @d_tv.user_id
    click_on 'Create D tv'

    assert_text 'D tv was successfully created'
    click_on 'Back'
  end

  test 'updating a D tv' do
    visit d_tvs_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @d_tv.date
    fill_in 'Memo', with: @d_tv.memo
    fill_in 'Price', with: @d_tv.price
    fill_in 'Status', with: @d_tv.status
    fill_in 'Update period', with: @d_tv.update_period
    fill_in 'User', with: @d_tv.user_id
    click_on 'Update D tv'

    assert_text 'D tv was successfully updated'
    click_on 'Back'
  end

  test 'destroying a D tv' do
    visit d_tvs_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'D tv was successfully destroyed'
  end
end

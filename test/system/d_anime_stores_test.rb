# frozen_string_literal: true

require 'application_system_test_case'

class DAnimeStoresTest < ApplicationSystemTestCase
  setup do
    @d_anime_store = d_anime_stores(:one)
  end

  test 'visiting the index' do
    visit d_anime_stores_url
    assert_selector 'h1', text: 'D Anime Stores'
  end

  test 'creating a D anime store' do
    visit d_anime_stores_url
    click_on 'New D Anime Store'

    fill_in 'Date', with: @d_anime_store.date
    fill_in 'Memo', with: @d_anime_store.memo
    fill_in 'Price', with: @d_anime_store.price
    fill_in 'Status', with: @d_anime_store.status
    fill_in 'Update period', with: @d_anime_store.update_period
    fill_in 'User', with: @d_anime_store.user_id
    click_on 'Create D anime store'

    assert_text 'D anime store was successfully created'
    click_on 'Back'
  end

  test 'updating a D anime store' do
    visit d_anime_stores_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @d_anime_store.date
    fill_in 'Memo', with: @d_anime_store.memo
    fill_in 'Price', with: @d_anime_store.price
    fill_in 'Status', with: @d_anime_store.status
    fill_in 'Update period', with: @d_anime_store.update_period
    fill_in 'User', with: @d_anime_store.user_id
    click_on 'Update D anime store'

    assert_text 'D anime store was successfully updated'
    click_on 'Back'
  end

  test 'destroying a D anime store' do
    visit d_anime_stores_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'D anime store was successfully destroyed'
  end
end

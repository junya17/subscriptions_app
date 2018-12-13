# frozen_string_literal: true

require 'application_system_test_case'

class AmazonsTest < ApplicationSystemTestCase
  setup do
    @amazon = amazons(:one)
  end

  test 'visiting the index' do
    visit amazons_url
    assert_selector 'h1', text: 'Amazons'
  end

  test 'creating a Amazon' do
    visit amazons_url
    click_on 'New Amazon'

    fill_in 'Name', with: @amazon.name
    fill_in 'Price', with: @amazon.price
    click_on 'Create Amazon'

    assert_text 'Amazon was successfully created'
    click_on 'Back'
  end

  test 'updating a Amazon' do
    visit amazons_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @amazon.name
    fill_in 'Price', with: @amazon.price
    click_on 'Update Amazon'

    assert_text 'Amazon was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Amazon' do
    visit amazons_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Amazon was successfully destroyed'
  end
end

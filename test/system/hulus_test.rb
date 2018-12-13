# frozen_string_literal: true

require 'application_system_test_case'

class HulusTest < ApplicationSystemTestCase
  setup do
    @hulu = hulus(:one)
  end

  test 'visiting the index' do
    visit hulus_url
    assert_selector 'h1', text: 'Hulus'
  end

  test 'creating a Hulu' do
    visit hulus_url
    click_on 'New Hulu'

    fill_in 'Name', with: @hulu.name
    fill_in 'Price', with: @hulu.price
    click_on 'Create Hulu'

    assert_text 'Hulu was successfully created'
    click_on 'Back'
  end

  test 'updating a Hulu' do
    visit hulus_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @hulu.name
    fill_in 'Price', with: @hulu.price
    click_on 'Update Hulu'

    assert_text 'Hulu was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Hulu' do
    visit hulus_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Hulu was successfully destroyed'
  end
end

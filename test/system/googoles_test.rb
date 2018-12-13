# frozen_string_literal: true

require 'application_system_test_case'

class GoogolesTest < ApplicationSystemTestCase
  setup do
    @googole = googoles(:one)
  end

  test 'visiting the index' do
    visit googoles_url
    assert_selector 'h1', text: 'Googoles'
  end

  test 'creating a Googole' do
    visit googoles_url
    click_on 'New Googole'

    fill_in 'Name', with: @googole.name
    fill_in 'Price', with: @googole.price
    click_on 'Create Googole'

    assert_text 'Googole was successfully created'
    click_on 'Back'
  end

  test 'updating a Googole' do
    visit googoles_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @googole.name
    fill_in 'Price', with: @googole.price
    click_on 'Update Googole'

    assert_text 'Googole was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Googole' do
    visit googoles_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Googole was successfully destroyed'
  end
end

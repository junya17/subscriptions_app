# frozen_string_literal: true

require 'application_system_test_case'

class AmazonPrimesTest < ApplicationSystemTestCase
  setup do
    @amazon_prime = amazon_primes(:one)
  end

  test 'visiting the index' do
    visit amazon_primes_url
    assert_selector 'h1', text: 'Amazon Primes'
  end

  test 'creating a Amazon prime' do
    visit amazon_primes_url
    click_on 'New Amazon Prime'

    fill_in 'Issue date', with: @amazon_prime.issue_date
    fill_in 'Memo', with: @amazon_prime.memo
    fill_in 'Price', with: @amazon_prime.price
    fill_in 'Status', with: @amazon_prime.status
    fill_in 'Update period', with: @amazon_prime.update_period
    click_on 'Create Amazon prime'

    assert_text 'Amazon prime was successfully created'
    click_on 'Back'
  end

  test 'updating a Amazon prime' do
    visit amazon_primes_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @amazon_prime.issue_date
    fill_in 'Memo', with: @amazon_prime.memo
    fill_in 'Price', with: @amazon_prime.price
    fill_in 'Status', with: @amazon_prime.status
    fill_in 'Update period', with: @amazon_prime.update_period
    click_on 'Update Amazon prime'

    assert_text 'Amazon prime was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Amazon prime' do
    visit amazon_primes_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Amazon prime was successfully destroyed'
  end
end

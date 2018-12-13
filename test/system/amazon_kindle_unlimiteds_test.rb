# frozen_string_literal: true

require 'application_system_test_case'

class AmazonKindleUnlimitedsTest < ApplicationSystemTestCase
  setup do
    @amazon_kindle_unlimited = amazon_kindle_unlimiteds(:one)
  end

  test 'visiting the index' do
    visit amazon_kindle_unlimiteds_url
    assert_selector 'h1', text: 'Amazon Kindle Unlimiteds'
  end

  test 'creating a Amazon kindle unlimited' do
    visit amazon_kindle_unlimiteds_url
    click_on 'New Amazon Kindle Unlimited'

    fill_in 'Issue date', with: @amazon_kindle_unlimited.issue_date
    fill_in 'Memo', with: @amazon_kindle_unlimited.memo
    fill_in 'Price', with: @amazon_kindle_unlimited.price
    fill_in 'Status', with: @amazon_kindle_unlimited.status
    fill_in 'Update period', with: @amazon_kindle_unlimited.update_period
    click_on 'Create Amazon kindle unlimited'

    assert_text 'Amazon kindle unlimited was successfully created'
    click_on 'Back'
  end

  test 'updating a Amazon kindle unlimited' do
    visit amazon_kindle_unlimiteds_url
    click_on 'Edit', match: :first

    fill_in 'Issue date', with: @amazon_kindle_unlimited.issue_date
    fill_in 'Memo', with: @amazon_kindle_unlimited.memo
    fill_in 'Price', with: @amazon_kindle_unlimited.price
    fill_in 'Status', with: @amazon_kindle_unlimited.status
    fill_in 'Update period', with: @amazon_kindle_unlimited.update_period
    click_on 'Update Amazon kindle unlimited'

    assert_text 'Amazon kindle unlimited was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Amazon kindle unlimited' do
    visit amazon_kindle_unlimiteds_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Amazon kindle unlimited was successfully destroyed'
  end
end

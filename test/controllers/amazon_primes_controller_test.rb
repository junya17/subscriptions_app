# frozen_string_literal: true

require 'test_helper'

class AmazonPrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazon_prime = amazon_primes(:one)
  end

  test 'should get index' do
    get amazon_primes_url
    assert_response :success
  end

  test 'should get new' do
    get new_amazon_prime_url
    assert_response :success
  end

  test 'should create amazon_prime' do
    assert_difference('AmazonPrime.count') do
      post amazon_primes_url, params: { amazon_prime: { issue_date: @amazon_prime.issue_date, memo: @amazon_prime.memo, price: @amazon_prime.price, status: @amazon_prime.status, update_period: @amazon_prime.update_period } }
    end

    assert_redirected_to amazon_prime_url(AmazonPrime.last)
  end

  test 'should show amazon_prime' do
    get amazon_prime_url(@amazon_prime)
    assert_response :success
  end

  test 'should get edit' do
    get edit_amazon_prime_url(@amazon_prime)
    assert_response :success
  end

  test 'should update amazon_prime' do
    patch amazon_prime_url(@amazon_prime), params: { amazon_prime: { issue_date: @amazon_prime.issue_date, memo: @amazon_prime.memo, price: @amazon_prime.price, status: @amazon_prime.status, update_period: @amazon_prime.update_period } }
    assert_redirected_to amazon_prime_url(@amazon_prime)
  end

  test 'should destroy amazon_prime' do
    assert_difference('AmazonPrime.count', -1) do
      delete amazon_prime_url(@amazon_prime)
    end

    assert_redirected_to amazon_primes_url
  end
end

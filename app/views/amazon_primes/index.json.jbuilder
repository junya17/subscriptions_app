# frozen_string_literal: true

json.array! @amazon_primes, partial: 'amazon_primes/amazon_prime', as: :amazon_prime

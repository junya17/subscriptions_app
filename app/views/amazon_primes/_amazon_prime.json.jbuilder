# frozen_string_literal: true

json.extract! amazon_prime, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url amazon_prime_url(amazon_prime, format: :json)

# frozen_string_literal: true

json.extract! amazon_kindle_unlimited, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url amazon_kindle_unlimited_url(amazon_kindle_unlimited, format: :json)

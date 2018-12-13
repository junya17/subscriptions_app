# frozen_string_literal: true

json.extract! amazon, :id, :name, :price, :created_at, :updated_at
json.url amazon_url(amazon, format: :json)

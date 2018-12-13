# frozen_string_literal: true

json.extract! hulu, :id, :name, :price, :created_at, :updated_at
json.url hulu_url(hulu, format: :json)

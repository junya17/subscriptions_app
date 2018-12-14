# frozen_string_literal: true

json.extract! d_anime_store, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url d_anime_store_url(d_anime_store, format: :json)

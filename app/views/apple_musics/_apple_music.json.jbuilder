# frozen_string_literal: true

json.extract! apple_music, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url apple_music_url(apple_music, format: :json)

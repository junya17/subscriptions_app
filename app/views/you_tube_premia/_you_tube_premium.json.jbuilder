# frozen_string_literal: true

json.extract! you_tube_premium, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url you_tube_premium_url(you_tube_premium, format: :json)

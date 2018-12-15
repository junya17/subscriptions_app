# frozen_string_literal: true

json.extract! fod, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url fod_url(fod, format: :json)

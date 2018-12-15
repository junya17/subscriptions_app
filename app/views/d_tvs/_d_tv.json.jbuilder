# frozen_string_literal: true

json.extract! d_tv, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url d_tv_url(d_tv, format: :json)

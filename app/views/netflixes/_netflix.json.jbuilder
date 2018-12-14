# frozen_string_literal: true

json.extract! netflix, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url netflix_url(netflix, format: :json)

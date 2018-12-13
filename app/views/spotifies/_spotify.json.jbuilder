# frozen_string_literal: true

json.extract! spotify, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url spotify_url(spotify, format: :json)

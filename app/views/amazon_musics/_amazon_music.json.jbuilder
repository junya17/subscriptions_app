# frozen_string_literal: true

json.extract! amazon_music, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url amazon_music_url(amazon_music, format: :json)

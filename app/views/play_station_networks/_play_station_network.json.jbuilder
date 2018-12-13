# frozen_string_literal: true

json.extract! play_station_network, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url play_station_network_url(play_station_network, format: :json)

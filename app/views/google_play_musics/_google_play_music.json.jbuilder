# frozen_string_literal: true

json.extract! google_play_music, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url google_play_music_url(google_play_music, format: :json)

# frozen_string_literal: true

json.extract! line_music, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url line_music_url(line_music, format: :json)

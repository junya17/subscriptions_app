# frozen_string_literal: true

json.extract! au_video_pass, :id, :price, :date, :update_period, :status, :memo, :user_id, :created_at, :updated_at
json.url au_video_pass_url(au_video_pass, format: :json)

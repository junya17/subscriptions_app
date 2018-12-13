# frozen_string_literal: true

json.extract! unext, :id, :price, :issue_date, :update_period, :status, :memo, :created_at, :updated_at
json.url unext_url(unext, format: :json)

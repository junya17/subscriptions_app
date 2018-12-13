# frozen_string_literal: true

json.array! @amazons, partial: 'amazons/amazon', as: :amazon

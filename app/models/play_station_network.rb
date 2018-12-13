# frozen_string_literal: true

class PlayStationNetwork < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

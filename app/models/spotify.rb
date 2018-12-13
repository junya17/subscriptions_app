# frozen_string_literal: true

class Spotify < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

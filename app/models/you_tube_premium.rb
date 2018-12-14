# frozen_string_literal: true

class YouTubePremium < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

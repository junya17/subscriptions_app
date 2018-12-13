# frozen_string_literal: true

class GooglePlayMusic < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

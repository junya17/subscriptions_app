# frozen_string_literal: true

class AppleMusic < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

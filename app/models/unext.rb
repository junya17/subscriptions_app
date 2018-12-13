# frozen_string_literal: true

class Unext < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

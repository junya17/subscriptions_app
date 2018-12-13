# frozen_string_literal: true

class AmazonPrime < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

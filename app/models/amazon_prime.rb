# frozen_string_literal: true

class AmazonPrime < ApplicationRecord
  validates :price, presence: true
end

# frozen_string_literal: true

class AmazonMusic < ApplicationRecord
  validates :price, presence: true
end

# frozen_string_literal: true

class AmazonKindleUnlimited < ApplicationRecord
  validates :price, presence: true
end

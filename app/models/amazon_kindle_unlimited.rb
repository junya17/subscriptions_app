# frozen_string_literal: true

class AmazonKindleUnlimited < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

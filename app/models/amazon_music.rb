# frozen_string_literal: true

class AmazonMusic < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

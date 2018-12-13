# frozen_string_literal: true

class Hulu < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

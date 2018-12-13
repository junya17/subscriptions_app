# frozen_string_literal: true

class Hulu < ApplicationRecord
  validates :price, presence: true
end

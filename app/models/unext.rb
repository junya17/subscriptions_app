# frozen_string_literal: true

class Unext < ApplicationRecord
  validates :price, presence: true
end

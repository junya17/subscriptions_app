# frozen_string_literal: true

class Netflix < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

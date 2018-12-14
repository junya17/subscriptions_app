# frozen_string_literal: true

class LineMusic < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

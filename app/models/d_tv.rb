# frozen_string_literal: true

class DTv < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

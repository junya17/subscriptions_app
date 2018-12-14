# frozen_string_literal: true

class Fod < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

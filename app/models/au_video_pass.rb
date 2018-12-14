# frozen_string_literal: true

class AuVideoPass < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

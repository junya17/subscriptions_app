# frozen_string_literal: true

class DAnimeStore < ApplicationRecord
  validates :price, presence: true
  belongs_to :user
end

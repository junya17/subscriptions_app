# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :amazon_kindle_unlimiteds
  has_many :amazon_musics
  has_many :amazon_primes
  has_many :google_play_musics
  has_many :hulus
  has_many :play_station_networks
  has_many :spotifies
  has_many :unexts
end

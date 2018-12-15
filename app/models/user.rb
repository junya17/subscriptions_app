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
  has_many :apple_musics
  has_many :d_anime_stores
  has_many :au_video_passes
  has_many :d_tvs
  has_many :fods
  has_many :line_musics
  has_many :netflixes
  has_many :you_tube_premia
end

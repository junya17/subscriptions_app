# frozen_string_literal: true

class TopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @amazon_prime = AmazonPrime.all

    @amazon_music = AmazonMusic.all

    @amazon_kindle = AmazonKindleUnlimited.all

    @google_play = GooglePlayMusic.all

    @hulu = Hulu.all

    @playstation = PlayStationNetwork.all

    @spotify = Spotify.all

    @unext = Unext.all

    if AmazonPrime.find_by(user_id: current_user.id)
      @amazon_prime_user = AmazonPrime.where(user_id: current_user.id).first
      @amazon_prime_sum = @amazon_prime_user[:price]
    else
      @amazon_prime_sum = 0
    end

    if AmazonMusic.find_by(user_id: current_user.id)
      @amazon_music_user = AmazonMusic.where(user_id: current_user.id).first
      @amazon_music_sum = @amazon_music_user[:price]
    else
      @amazon_music_sum = 0
    end

    if AmazonKindleUnlimited.find_by(user_id: current_user.id)
      @amazon_kindle_user = AmazonKindleUnlimited.where(user_id: current_user.id).first
      @amazon_kindle_sum = @amazon_kindle_user[:price]
    else
      @amazon_kindle_sum = 0
    end

    if GooglePlayMusic.find_by(user_id: current_user.id)
      @google_play_user = GooglePlayMusic.where(user_id: current_user.id).first
      @google_play_sum = @google_play_user[:price]
    else
      @google_play_sum = 0
    end

    if Hulu.find_by(user_id: current_user.id)
      @hulu_user = Hulu.where(user_id: current_user.id).first
      @hulu_sum = @hulu_user[:price]
    else
      @hulu_sum = 0
    end

    if PlayStationNetwork.find_by(user_id: current_user.id)
      @playstation_user = PlayStationNetwork.where(user_id: current_user.id).first
      @playstation_sum = @playstation_user[:price]
    else
      @playstation_sum = 0
    end

    if Spotify.find_by(user_id: current_user.id)
      @spotify_user = Spotify.where(user_id: current_user.id).first
      @spotify_sum = @spotify_user[:price]
    else
      @spotify_sum = 0
    end

    if Unext.find_by(user_id: current_user.id)
      @unext_user = Unext.where(user_id: current_user.id).first
      @unext_sum = @unext_user[:price]
    else
      @unext_sum = 0
    end

    @total = @amazon_prime_sum + @amazon_music_sum + @amazon_kindle_sum + @google_play_sum + @hulu_sum + @playstation_sum + @spotify_sum + @unext_sum
  end

  def second
    @amazon_primes = AmazonPrime.all
    @amazon_prime = AmazonPrime.first
    @prime_user = AmazonPrime.find_by(user_id: current_user.id)

    @amazon_musics = AmazonMusic.all
    @amazon_music = AmazonMusic.first
    @music_user = AmazonMusic.find_by(user_id: current_user.id)

    @amazon_kindles = AmazonKindleUnlimited.all
    @amazon_kindle = AmazonKindleUnlimited.first
    @kindle_user = AmazonKindleUnlimited.find_by(user_id: current_user.id)

    @google_plays = GooglePlayMusic.all
    @google_play = GooglePlayMusic.first
    @play_user = GooglePlayMusic.find_by(user_id: current_user.id)

    @hulus = Hulu.all
    @hulu = Hulu.first
    @hulu_user = Hulu.find_by(user_id: current_user.id)

    @play_stations = PlayStationNetwork.all
    @play_station = PlayStationNetwork.first
    @playstation_user = PlayStationNetwork.find_by(user_id: current_user.id)

    @spotifies = Spotify.all
    @spotify = Spotify.first
    @spotify_user = Spotify.find_by(user_id: current_user.id)

    @unexts = Unext.all
    @unext = Unext.first
    @unext_user = Unext.find_by(user_id: current_user.id)
  end
end

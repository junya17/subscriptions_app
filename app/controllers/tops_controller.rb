# frozen_string_literal: true

class TopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @amazon_prime = AmazonPrime.all

    @amazon_music = AmazonMusic.all

    @amazon_kindle = AmazonKindleUnlimited.all

    @apple_music = AppleMusic.all

    @au_video_pass = AuVideoPass.all

    @danime_store = DAnimeStore.all

    @dtv = DTv.all

    @fod = Fod.all

    @google_play = GooglePlayMusic.all

    @hulu = Hulu.all

    @line_music = LineMusic.all

    @netflix = Netflix.all

    @playstation = PlayStationNetwork.all

    @spotify = Spotify.all

    @unext = Unext.all

    @you_tube_premium = YouTubePremium.all

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

    if AppleMusic.find_by(user_id: current_user.id)
      @apple_music_user = AppleMusic.where(user_id: current_user.id).first
      @apple_music_sum = @apple_music_user[:price]
    else
      @apple_music_sum = 0
    end

    if AuVideoPass.find_by(user_id: current_user.id)
      @au_video_pass_user = AuVideoPass.where(user_id: current_user.id).first
      @au_video_pass_sum = @au_video_pass_user[:price]
    else
      @au_video_pass_sum = 0
    end

    if DAnimeStore.find_by(user_id: current_user.id)
      @danime_store_user = DAnimeStore.where(user_id: current_user.id).first
      @danime_store_sum = @danime_store_user[:price]
    else
      @danime_store_sum = 0
    end

    if DTv.find_by(user_id: current_user.id)
      @dtv_user = DTv.where(user_id: current_user.id).first
      @dtv_sum = @dtv_user[:price]
    else
      @dtv_sum = 0
    end

    if Fod.find_by(user_id: current_user.id)
      @fod_user = Fod.where(user_id: current_user.id).first
      @fod_sum = @fod_user[:price]
    else
      @fod_sum = 0
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

    if LineMusic.find_by(user_id: current_user.id)
      @line_music_user = LineMusic.where(user_id: current_user.id).first
      @line_music_sum = @line_music_user[:price]
    else
      @line_music_sum = 0
    end

    if Netflix.find_by(user_id: current_user.id)
      @netflix_user = Netflix.where(user_id: current_user.id).first
      @netflix_sum = @netflix_user[:price]
    else
      @netflix_sum = 0
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

    if YouTubePremium.find_by(user_id: current_user.id)
      @you_tube_premium_user = YouTubePremium.where(user_id: current_user.id).first
      @you_tube_premium_sum = @you_tube_premium_user[:price]
    else
      @you_tube_premium_sum = 0
    end

    @total = @amazon_prime_sum + @amazon_music_sum + @amazon_kindle_sum + @apple_music_sum + @au_video_pass_sum + @danime_store_sum + @dtv_sum + @fod_sum + @google_play_sum + @hulu_sum + @line_music_sum + @netflix_sum + @playstation_sum + @spotify_sum + @unext_sum + @you_tube_premium_sum
  end

  def second
    @amazon_primes = AmazonPrime.all
    @prime_user = AmazonPrime.find_by(user_id: current_user.id)

    @amazon_musics = AmazonMusic.all
    @music_user = AmazonMusic.find_by(user_id: current_user.id)

    @amazon_kindles = AmazonKindleUnlimited.all
    @kindle_user = AmazonKindleUnlimited.find_by(user_id: current_user.id)

    @apple_musics = AppleMusic.all
    @apple_music_user = AppleMusic.find_by(user_id: current_user.id)

    @dtv = DTv.all
    @dtv_user = DTv.find_by(user_id: current_user.id)

    @fod = Fod.all
    @fod_user = Fod.find_by(user_id: current_user.id)

    @google_plays = GooglePlayMusic.all
    @play_user = GooglePlayMusic.find_by(user_id: current_user.id)

    @hulus = Hulu.all
    @hulu_user = Hulu.find_by(user_id: current_user.id)

    @line_music = LineMusic.all
    @line_music_user = LineMusic.find_by(user_id: current_user.id)

    @netflix = Netflix.all
    @netflix_user = Netflix.find_by(user_id: current_user.id)

    @play_stations = PlayStationNetwork.all
    @playstation_user = PlayStationNetwork.find_by(user_id: current_user.id)

    @spotifies = Spotify.all
    @spotify_user = Spotify.find_by(user_id: current_user.id)

    @unexts = Unext.all
    @unext_user = Unext.find_by(user_id: current_user.id)

    @you_tube_premiums = YouTubePremium.all
    @you_tube_premium_user = YouTubePremium.find_by(user_id: current_user.id)
  end
end

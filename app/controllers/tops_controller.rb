# frozen_string_literal: true

class TopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @amazon_prime = AmazonPrime.first
    @amazon_music = AmazonMusic.first
    @amazon_kindle = AmazonKindleUnlimited.first
    @google_play = GooglePlayMusic.first
    @hulu = Hulu.first
    @playstation = PlayStationNetwork.first
    @spotify = Spotify.first
    @unext = Unext.first

    @amazon_prime_sum = if @amazon_prime
                          @amazon_prime.price
                        else
                          0
                        end

    @amazon_music_sum = if @amazon_music
                          @amazon_music.price
                        else
                          0
                        end

    @amazon_kindle_sum = if @amazon_kindle
                           @amazon_kindle.price
                         else
                           0
                         end

    @google_play_sum = if @google_play
                         @google_play.price
                       else
                         0
                       end

    @hulu_sum = if @hulu
                  @hulu.price
                else
                  0
                end

    @playstation_sum = if @playstation
                         @playstation.price
                       else
                         0
                       end

    @spotify_sum = if @spotify
                     @spotify.price
                   else
                     0
                   end

    @unext_sum = if @unext
                   @unext.price
                 else
                   0
                 end

    @total = @amazon_prime_sum + @amazon_music_sum + @amazon_kindle_sum + @google_play_sum + @hulu_sum + @playstation_sum + @spotify_sum + @unext_sum
  end

  def second
    @amazon_primes = AmazonPrime.all
    @amazon_prime = AmazonPrime.first

    @amazon_musics = AmazonMusic.all
    @amazon_music = AmazonMusic.first

    @amazon_kindles = AmazonKindleUnlimited.all
    @amazon_kindle = AmazonKindleUnlimited.first

    @google_plays = GooglePlayMusic.all
    @google_play = GooglePlayMusic.first

    @hulus = Hulu.all
    @hulu = Hulu.first

    @play_stations = PlayStationNetwork.all
    @play_station = PlayStationNetwork.first

    @spotifies = Spotify.all
    @spotify = Spotify.first

    @unexts = Unext.all
    @unext = Unext.first
  end
end

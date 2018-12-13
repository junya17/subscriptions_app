# frozen_string_literal: true

Rails.application.routes.draw do
  resources :spotifies
  resources :unexts
  resources :play_station_networks
  resources :google_play_musics
  resources :amazon_kindle_unlimiteds
  resources :amazon_musics
  resources :amazon_primes
  devise_for :users
  root 'tops#index'
  resources :hulus
  resources :googles
  resources :amazons

  get '/tops', to: 'tops#index'
  get '/second', to: 'tops#second'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

class GooglePlayMusicsController < ApplicationController
  before_action :set_google_play_music, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /google_play_musics
  # GET /google_play_musics.json
  def index
    @google_play_musics = GooglePlayMusic.all
  end

  # GET /google_play_musics/1
  # GET /google_play_musics/1.json
  def show; end

  # GET /google_play_musics/new
  def new
    @google_play_music = current_user.google_play_musics.build
  end

  # GET /google_play_musics/1/edit
  def edit; end

  # POST /google_play_musics
  # POST /google_play_musics.json
  def create
    @google_play_music = current_user.google_play_musics.build(google_play_music_params)

    respond_to do |format|
      if @google_play_music.save
        format.html { redirect_to root_path, notice: success('Google Play Music') }
        format.json { render :show, status: :created, location: @google_play_music }
      else
        format.html { render :new }
        format.json { render json: @google_play_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /google_play_musics/1
  # PATCH/PUT /google_play_musics/1.json
  def update
    respond_to do |format|
      if @google_play_music.update(google_play_music_params)
        format.html { redirect_to root_path, notice: update('Google Play Music') }
        format.json { render :show, status: :ok, location: @google_play_music }
      else
        format.html { render :edit }
        format.json { render json: @google_play_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_play_musics/1
  # DELETE /google_play_musics/1.json
  def destroy
    @google_play_music.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: delete('Google Play Music') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_google_play_music
    @google_play_music = GooglePlayMusic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def google_play_music_params
    params.require(:google_play_music).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

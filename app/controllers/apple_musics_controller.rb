# frozen_string_literal: true

class AppleMusicsController < ApplicationController
  before_action :set_apple_music, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /apple_musics
  # GET /apple_musics.json
  def index
    @apple_musics = AppleMusic.all
  end

  # GET /apple_musics/1
  # GET /apple_musics/1.json
  def show; end

  # GET /apple_musics/new
  def new
    @apple_music = AppleMusic.new
  end

  # GET /apple_musics/1/edit
  def edit; end

  # POST /apple_musics
  # POST /apple_musics.json
  def create
    @apple_music = AppleMusic.new(apple_music_params)

    respond_to do |format|
      if @apple_music.save
        format.html { redirect_to @apple_music, notice: 'Apple music was successfully created.' }
        format.json { render :show, status: :created, location: @apple_music }
      else
        format.html { render :new }
        format.json { render json: @apple_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apple_musics/1
  # PATCH/PUT /apple_musics/1.json
  def update
    respond_to do |format|
      if @apple_music.update(apple_music_params)
        format.html { redirect_to @apple_music, notice: 'Apple music was successfully updated.' }
        format.json { render :show, status: :ok, location: @apple_music }
      else
        format.html { render :edit }
        format.json { render json: @apple_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apple_musics/1
  # DELETE /apple_musics/1.json
  def destroy
    @apple_music.destroy
    respond_to do |format|
      format.html { redirect_to apple_musics_url, notice: 'Apple music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_apple_music
    @apple_music = AppleMusic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def apple_music_params
    params.require(:apple_music).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

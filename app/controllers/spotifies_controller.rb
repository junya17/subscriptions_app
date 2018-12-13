# frozen_string_literal: true

class SpotifiesController < ApplicationController
  before_action :set_spotify, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /spotifies
  # GET /spotifies.json
  def index
    @spotifies = Spotify.all
  end

  # GET /spotifies/1
  # GET /spotifies/1.json
  def show; end

  # GET /spotifies/new
  def new
    @spotify = current_user.spotifies.build
  end

  # GET /spotifies/1/edit
  def edit; end

  # POST /spotifies
  # POST /spotifies.json
  def create
    @spotify = current_user.spotifies.build(spotify_params)

    respond_to do |format|
      if @spotify.save
        format.html { redirect_to root_path, notice: 'Spotify was successfully created.' }
        format.json { render :show, status: :created, location: @spotify }
      else
        format.html { render :new }
        format.json { render json: @spotify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotifies/1
  # PATCH/PUT /spotifies/1.json
  def update
    respond_to do |format|
      if @spotify.update(spotify_params)
        format.html { redirect_to root_path, notice: 'Spotify was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotify }
      else
        format.html { render :edit }
        format.json { render json: @spotify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotifies/1
  # DELETE /spotifies/1.json
  def destroy
    @spotify.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Spotify was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotify
    @spotify = Spotify.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotify_params
    params.require(:spotify).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

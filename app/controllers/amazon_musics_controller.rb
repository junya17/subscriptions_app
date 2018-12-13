# frozen_string_literal: true

class AmazonMusicsController < ApplicationController
  before_action :set_amazon_music, only: %i[show edit update destroy]
  before_action :authenticate_user!


  # GET /amazon_musics
  # GET /amazon_musics.json
  def index
    @amazon_musics = AmazonMusic.all
  end

  # GET /amazon_musics/1
  # GET /amazon_musics/1.json
  def show; end

  # GET /amazon_musics/new
  def new
    @amazon_music = current_user.amazon_musics.build
  end

  # GET /amazon_musics/1/edit
  def edit; end

  # POST /amazon_musics
  # POST /amazon_musics.json
  def create
    @amazon_music = current_user.amazon_musics.build(amazon_music_params)

    respond_to do |format|
      if @amazon_music.save
        format.html { redirect_to root_path, notice: 'Amazon music was successfully created.' }
        format.json { render :show, status: :created, location: @amazon_music }
      else
        format.html { render :new }
        format.json { render json: @amazon_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amazon_musics/1
  # PATCH/PUT /amazon_musics/1.json
  def update
    respond_to do |format|
      if @amazon_music.update(amazon_music_params)
        format.html { redirect_to root_path, notice: 'Amazon music was successfully updated.' }
        format.json { render :show, status: :ok, location: @amazon_music }
      else
        format.html { render :edit }
        format.json { render json: @amazon_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amazon_musics/1
  # DELETE /amazon_musics/1.json
  def destroy
    @amazon_music.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Amazon music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_amazon_music
    @amazon_music = AmazonMusic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def amazon_music_params
    params.require(:amazon_music).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

# frozen_string_literal: true

class LineMusicsController < ApplicationController
  before_action :set_line_music, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /line_musics
  # GET /line_musics.json
  def index
    @line_musics = LineMusic.all
  end

  # GET /line_musics/1
  # GET /line_musics/1.json
  def show; end

  # GET /line_musics/new
  def new
    @line_music = current_user.line_musics.build
  end

  # GET /line_musics/1/edit
  def edit; end

  # POST /line_musics
  # POST /line_musics.json
  def create
    @line_music = current_user.line_musics.build(line_music_params)

    respond_to do |format|
      if @line_music.save
        format.html { redirect_to @line_music, notice: 'Line music was successfully created.' }
        format.json { render :show, status: :created, location: @line_music }
      else
        format.html { render :new }
        format.json { render json: @line_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_musics/1
  # PATCH/PUT /line_musics/1.json
  def update
    respond_to do |format|
      if @line_music.update(line_music_params)
        format.html { redirect_to @line_music, notice: 'Line music was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_music }
      else
        format.html { render :edit }
        format.json { render json: @line_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_musics/1
  # DELETE /line_musics/1.json
  def destroy
    @line_music.destroy
    respond_to do |format|
      format.html { redirect_to line_musics_url, notice: 'Line music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_line_music
    @line_music = LineMusic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def line_music_params
    params.require(:line_music).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

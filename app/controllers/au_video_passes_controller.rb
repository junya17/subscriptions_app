# frozen_string_literal: true

class AuVideoPassesController < ApplicationController
  before_action :set_au_video_pass, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /au_video_passes
  # GET /au_video_passes.json
  def index
    @au_video_passes = AuVideoPass.all
  end

  # GET /au_video_passes/1
  # GET /au_video_passes/1.json
  def show; end

  # GET /au_video_passes/new
  def new
    @au_video_pass = current_user.au_video_passes.build
  end

  # GET /au_video_passes/1/edit
  def edit; end

  # POST /au_video_passes
  # POST /au_video_passes.json
  def create
    @au_video_pass = current_user.au_video_passes.build(au_video_pass_params)

    respond_to do |format|
      if @au_video_pass.save
        format.html { redirect_to root_path, notice: success('auビデオパス') }
        format.json { render :show, status: :created, location: @au_video_pass }
      else
        format.html { render :new }
        format.json { render json: @au_video_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /au_video_passes/1
  # PATCH/PUT /au_video_passes/1.json
  def update
    respond_to do |format|
      if @au_video_pass.update(au_video_pass_params)
        format.html { redirect_to root_path, notice: update('auビデオパス') }
        format.json { render :show, status: :ok, location: @au_video_pass }
      else
        format.html { render :edit }
        format.json { render json: @au_video_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /au_video_passes/1
  # DELETE /au_video_passes/1.json
  def destroy
    @au_video_pass.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: delete('auビデオパス') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_au_video_pass
    @au_video_pass = AuVideoPass.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def au_video_pass_params
    params.require(:au_video_pass).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

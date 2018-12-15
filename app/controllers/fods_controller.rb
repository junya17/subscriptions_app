# frozen_string_literal: true

class FodsController < ApplicationController
  before_action :set_fod, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /fods
  # GET /fods.json
  def index
    @fods = Fod.all
  end

  # GET /fods/1
  # GET /fods/1.json
  def show; end

  # GET /fods/new
  def new
    @fod = current_user.fods.build
  end

  # GET /fods/1/edit
  def edit; end

  # POST /fods
  # POST /fods.json
  def create
    @fod = current_user.fods.build(fod_params)

    respond_to do |format|
      if @fod.save
        format.html { redirect_to @fod, notice: 'Fod was successfully created.' }
        format.json { render :show, status: :created, location: @fod }
      else
        format.html { render :new }
        format.json { render json: @fod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fods/1
  # PATCH/PUT /fods/1.json
  def update
    respond_to do |format|
      if @fod.update(fod_params)
        format.html { redirect_to @fod, notice: 'Fod was successfully updated.' }
        format.json { render :show, status: :ok, location: @fod }
      else
        format.html { render :edit }
        format.json { render json: @fod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fods/1
  # DELETE /fods/1.json
  def destroy
    @fod.destroy
    respond_to do |format|
      format.html { redirect_to fods_url, notice: 'Fod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fod
    @fod = Fod.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def fod_params
    params.require(:fod).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

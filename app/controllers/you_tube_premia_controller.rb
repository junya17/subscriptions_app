# frozen_string_literal: true

class YouTubePremiaController < ApplicationController
  before_action :set_you_tube_premium, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /you_tube_premia
  # GET /you_tube_premia.json
  def index
    @you_tube_premia = YouTubePremium.all
  end

  # GET /you_tube_premia/1
  # GET /you_tube_premia/1.json
  def show; end

  # GET /you_tube_premia/new
  def new
    @you_tube_premium = current_user.you_tube_premia.build
  end

  # GET /you_tube_premia/1/edit
  def edit; end

  # POST /you_tube_premia
  # POST /you_tube_premia.json
  def create
    @you_tube_premium = current_user.you_tube_premia.build(you_tube_premium_params)

    respond_to do |format|
      if @you_tube_premium.save
        format.html { redirect_to @you_tube_premium, notice: 'You tube premium was successfully created.' }
        format.json { render :show, status: :created, location: @you_tube_premium }
      else
        format.html { render :new }
        format.json { render json: @you_tube_premium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /you_tube_premia/1
  # PATCH/PUT /you_tube_premia/1.json
  def update
    respond_to do |format|
      if @you_tube_premium.update(you_tube_premium_params)
        format.html { redirect_to @you_tube_premium, notice: 'You tube premium was successfully updated.' }
        format.json { render :show, status: :ok, location: @you_tube_premium }
      else
        format.html { render :edit }
        format.json { render json: @you_tube_premium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /you_tube_premia/1
  # DELETE /you_tube_premia/1.json
  def destroy
    @you_tube_premium.destroy
    respond_to do |format|
      format.html { redirect_to you_tube_premia_url, notice: 'You tube premium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_you_tube_premium
    @you_tube_premium = YouTubePremium.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def you_tube_premium_params
    params.require(:you_tube_premium).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

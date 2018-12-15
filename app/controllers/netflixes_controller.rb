# frozen_string_literal: true

class NetflixesController < ApplicationController
  before_action :set_netflix, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /netflixes
  # GET /netflixes.json
  def index
    @netflixes = Netflix.all
  end

  # GET /netflixes/1
  # GET /netflixes/1.json
  def show; end

  # GET /netflixes/new
  def new
    @netflix = current_user.netflixes.build
  end

  # GET /netflixes/1/edit
  def edit; end

  # POST /netflixes
  # POST /netflixes.json
  def create
    @netflix = current_user.netflixes.build(netflix_params)

    respond_to do |format|
      if @netflix.save
        format.html { redirect_to @netflix, notice: 'Netflix was successfully created.' }
        format.json { render :show, status: :created, location: @netflix }
      else
        format.html { render :new }
        format.json { render json: @netflix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /netflixes/1
  # PATCH/PUT /netflixes/1.json
  def update
    respond_to do |format|
      if @netflix.update(netflix_params)
        format.html { redirect_to @netflix, notice: 'Netflix was successfully updated.' }
        format.json { render :show, status: :ok, location: @netflix }
      else
        format.html { render :edit }
        format.json { render json: @netflix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /netflixes/1
  # DELETE /netflixes/1.json
  def destroy
    @netflix.destroy
    respond_to do |format|
      format.html { redirect_to netflixes_url, notice: 'Netflix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_netflix
    @netflix = Netflix.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def netflix_params
    params.require(:netflix).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

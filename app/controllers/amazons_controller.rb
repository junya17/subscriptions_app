# frozen_string_literal: true

class AmazonsController < ApplicationController
  before_action :set_amazon, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /amazons
  # GET /amazons.json
  def index
    @amazons = Amazon.all
  end

  # GET /amazons/1
  # GET /amazons/1.json
  def show; end

  # GET /amazons/new
  def new
    @amazon = Amazon.new
  end

  # GET /amazons/1/edit
  def edit; end

  # POST /amazons
  # POST /amazons.json
  def create
    @amazon = Amazon.new(amazon_params)

    respond_to do |format|
      if @amazon.save
        format.html { redirect_to root_path, notice: 'Amazon was successfully created.' }
        format.json { render :show, status: :created, location: root_path }
      else
        format.html { render :new }
        format.json { render json: @amazon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amazons/1
  # PATCH/PUT /amazons/1.json
  def update
    respond_to do |format|
      if @amazon.update(amazon_params)
        format.html { redirect_to @amazon, notice: 'Amazon was successfully updated.' }
        format.json { render :show, status: :ok, location: @amazon }
      else
        format.html { render :edit }
        format.json { render json: @amazon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amazons/1
  # DELETE /amazons/1.json
  def destroy
    @amazon.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Amazon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_amazon
    @amazon = Amazon.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def amazon_params
    params.require(:amazon).permit(:name, :price)
  end
end

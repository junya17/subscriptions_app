# frozen_string_literal: true

class DAnimeStoresController < ApplicationController
  before_action :set_d_anime_store, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /d_anime_stores
  # GET /d_anime_stores.json
  def index
    @d_anime_stores = DAnimeStore.all
  end

  # GET /d_anime_stores/1
  # GET /d_anime_stores/1.json
  def show; end

  # GET /d_anime_stores/new
  def new
    @d_anime_store = DAnimeStore.new
  end

  # GET /d_anime_stores/1/edit
  def edit; end

  # POST /d_anime_stores
  # POST /d_anime_stores.json
  def create
    @d_anime_store = DAnimeStore.new(d_anime_store_params)

    respond_to do |format|
      if @d_anime_store.save
        format.html { redirect_to @d_anime_store, notice: 'D anime store was successfully created.' }
        format.json { render :show, status: :created, location: @d_anime_store }
      else
        format.html { render :new }
        format.json { render json: @d_anime_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_anime_stores/1
  # PATCH/PUT /d_anime_stores/1.json
  def update
    respond_to do |format|
      if @d_anime_store.update(d_anime_store_params)
        format.html { redirect_to @d_anime_store, notice: 'D anime store was successfully updated.' }
        format.json { render :show, status: :ok, location: @d_anime_store }
      else
        format.html { render :edit }
        format.json { render json: @d_anime_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_anime_stores/1
  # DELETE /d_anime_stores/1.json
  def destroy
    @d_anime_store.destroy
    respond_to do |format|
      format.html { redirect_to d_anime_stores_url, notice: 'D anime store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_d_anime_store
    @d_anime_store = DAnimeStore.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def d_anime_store_params
    params.require(:d_anime_store).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

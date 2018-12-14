# frozen_string_literal: true

class DTVsController < ApplicationController
  before_action :set_d_tv, only: %i[show edit update destroy]

  # GET /d_tvs
  # GET /d_tvs.json
  def index
    @d_tvs = DTv.all
  end

  # GET /d_tvs/1
  # GET /d_tvs/1.json
  def show; end

  # GET /d_tvs/new
  def new
    @d_tv = DTv.new
  end

  # GET /d_tvs/1/edit
  def edit; end

  # POST /d_tvs
  # POST /d_tvs.json
  def create
    @d_tv = DTv.new(d_tv_params)

    respond_to do |format|
      if @d_tv.save
        format.html { redirect_to @d_tv, notice: 'D tv was successfully created.' }
        format.json { render :show, status: :created, location: @d_tv }
      else
        format.html { render :new }
        format.json { render json: @d_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_tvs/1
  # PATCH/PUT /d_tvs/1.json
  def update
    respond_to do |format|
      if @d_tv.update(d_tv_params)
        format.html { redirect_to @d_tv, notice: 'D tv was successfully updated.' }
        format.json { render :show, status: :ok, location: @d_tv }
      else
        format.html { render :edit }
        format.json { render json: @d_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_tvs/1
  # DELETE /d_tvs/1.json
  def destroy
    @d_tv.destroy
    respond_to do |format|
      format.html { redirect_to d_tvs_url, notice: 'D tv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_d_tv
    @d_tv = DTv.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def d_tv_params
    params.require(:d_tv).permit(:price, :date, :update_period, :status, :memo, :user_id)
  end
end

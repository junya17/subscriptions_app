# frozen_string_literal: true

class DTvsController < ApplicationController
  before_action :set_d_tv, only: %i[show edit update destroy]
  before_action :authenticate_user!

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
    @d_tv = current_user.d_tvs.build
  end

  # GET /d_tvs/1/edit
  def edit; end

  # POST /d_tvs
  # POST /d_tvs.json
  def create
    @d_tv = current_user.d_tvs.build(d_tv_params)

    respond_to do |format|
      if @d_tv.save
        format.html { redirect_to root_path, notice: success('dTV') }
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
        format.html { redirect_to root_path, notice: update('dTV') }
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
      format.html { redirect_to root_path, notice: delete('dTV') }
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

# frozen_string_literal: true

class AmazonKindleUnlimitedsController < ApplicationController
  before_action :set_amazon_kindle_unlimited, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /amazon_kindle_unlimiteds
  # GET /amazon_kindle_unlimiteds.json
  def index
    @amazon_kindle_unlimiteds = AmazonKindleUnlimited.all
  end

  # GET /amazon_kindle_unlimiteds/1
  # GET /amazon_kindle_unlimiteds/1.json
  def show; end

  # GET /amazon_kindle_unlimiteds/new
  def new
    @amazon_kindle_unlimited = current_user.amazon_kindle_unlimiteds.build
  end

  # GET /amazon_kindle_unlimiteds/1/edit
  def edit; end

  # POST /amazon_kindle_unlimiteds
  # POST /amazon_kindle_unlimiteds.json
  def create
    @amazon_kindle_unlimited = current_user.amazon_kindle_unlimiteds.build(amazon_kindle_unlimited_params)

    respond_to do |format|
      if @amazon_kindle_unlimited.save
        format.html { redirect_to root_path, notice: alert('Amazon') }
        format.json { render :show, status: :created, location: @amazon_kindle_unlimited }
      else
        format.html { render :new }
        format.json { render json: @amazon_kindle_unlimited.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amazon_kindle_unlimiteds/1
  # PATCH/PUT /amazon_kindle_unlimiteds/1.json
  def update
    respond_to do |format|
      if @amazon_kindle_unlimited.update(amazon_kindle_unlimited_params)
        format.html { redirect_to root_path, notice: alert(Amazonkindle) }
        format.json { render :show, status: :ok, location: @amazon_kindle_unlimited }
      else
        format.html { render :edit }
        format.json { render json: @amazon_kindle_unlimited.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amazon_kindle_unlimiteds/1
  # DELETE /amazon_kindle_unlimiteds/1.json
  def destroy
    @amazon_kindle_unlimited.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Amazon kindle unlimitedの削除に成功しました。' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_amazon_kindle_unlimited
    @amazon_kindle_unlimited = AmazonKindleUnlimited.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def amazon_kindle_unlimited_params
    params.require(:amazon_kindle_unlimited).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

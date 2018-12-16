# frozen_string_literal: true

class UnextsController < ApplicationController
  before_action :set_unext, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /unexts
  # GET /unexts.json
  def index
    @unexts = Unext.all
  end

  # GET /unexts/1
  # GET /unexts/1.json
  def show; end

  # GET /unexts/new
  def new
    @unext = current_user.unexts.build
  end

  # GET /unexts/1/edit
  def edit; end

  # POST /unexts
  # POST /unexts.json
  def create
    @unext = current_user.unexts.build(unext_params)

    respond_to do |format|
      if @unext.save
        format.html { redirect_to root_path, notice: success('U-NEXT') }
        format.json { render :show, status: :created, location: @unext }
      else
        format.html { render :new }
        format.json { render json: @unext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unexts/1
  # PATCH/PUT /unexts/1.json
  def update
    respond_to do |format|
      if @unext.update(unext_params)
        format.html { redirect_to root_path, notice: update('U-NEXT') }
        format.json { render :show, status: :ok, location: @unext }
      else
        format.html { render :edit }
        format.json { render json: @unext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unexts/1
  # DELETE /unexts/1.json
  def destroy
    @unext.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: delete('U-NEXT')}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_unext
    @unext = Unext.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def unext_params
    params.require(:unext).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

# frozen_string_literal: true

class AmazonPrimesController < ApplicationController
  before_action :set_amazon_prime, only: %i[show edit update destroy]
  before_action :authenticate_user!
  
  # GET /amazon_primes
  # GET /amazon_primes.json
  def index
    @amazon_primes = AmazonPrime.all
  end

  # GET /amazon_primes/1
  # GET /amazon_primes/1.json
  def show; end

  # GET /amazon_primes/new
  def new
    @amazon_prime = current_user.amazon_primes.build
  end

  # GET /amazon_primes/1/edit
  def edit; end

  # POST /amazon_primes
  # POST /amazon_primes.json
  def create
    @amazon_prime = current_user.amazon_primes.build(amazon_prime_params)

    respond_to do |format|
      if @amazon_prime.save
        format.html { redirect_to root_path, notice: 'Amazon prime was successfully created.' }
        format.json { render :show, status: :created, location: @amazon_prime }
      else
        format.html { render :new }
        format.json { render json: @amazon_prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amazon_primes/1
  # PATCH/PUT /amazon_primes/1.json
  def update
    respond_to do |format|
      if @amazon_prime.update(amazon_prime_params)
        format.html { redirect_to root_path, notice: 'Amazon prime was successfully updated.' }
        format.json { render :show, status: :ok, location: @amazon_prime }
      else
        format.html { render :edit }
        format.json { render json: @amazon_prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amazon_primes/1
  # DELETE /amazon_primes/1.json
  def destroy
    @amazon_prime.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Amazon prime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_amazon_prime
    @amazon_prime = AmazonPrime.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def amazon_prime_params
    params.require(:amazon_prime).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

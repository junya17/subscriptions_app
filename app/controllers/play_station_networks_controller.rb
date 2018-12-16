# frozen_string_literal: true

class PlayStationNetworksController < ApplicationController
  before_action :set_play_station_network, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /play_station_networks
  # GET /play_station_networks.json
  def index
    @play_station_networks = PlayStationNetwork.all
  end

  # GET /play_station_networks/1
  # GET /play_station_networks/1.json
  def show; end

  # GET /play_station_networks/new
  def new
    @play_station_network = current_user.play_station_networks.build
  end

  # GET /play_station_networks/1/edit
  def edit; end

  # POST /play_station_networks
  # POST /play_station_networks.json
  def create
    @play_station_network = current_user.play_station_networks.build(play_station_network_params)

    respond_to do |format|
      if @play_station_network.save
        format.html { redirect_to root_path, notice: success('Play Station Network') }
        format.json { render :show, status: :created, location: @play_station_network }
      else
        format.html { render :new }
        format.json { render json: @play_station_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_station_networks/1
  # PATCH/PUT /play_station_networks/1.json
  def update
    respond_to do |format|
      if @play_station_network.update(play_station_network_params)
        format.html { redirect_to root_path, notice: update('Play Station Network') }
        format.json { render :show, status: :ok, location: @play_station_network }
      else
        format.html { render :edit }
        format.json { render json: @play_station_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_station_networks/1
  # DELETE /play_station_networks/1.json
  def destroy
    @play_station_network.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: delete('Play Station Network') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_play_station_network
    @play_station_network = PlayStationNetwork.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def play_station_network_params
    params.require(:play_station_network).permit(:price, :issue_date, :update_period, :status, :memo)
  end
end

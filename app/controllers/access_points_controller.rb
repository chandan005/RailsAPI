class AccessPointsController < ApplicationController
  before_action :set_access_point, only: [:show, :update, :destroy]

  # GET /access_points
  def index
    @access_points = AccessPoint.all

    render json: @access_points
  end

  # GET /access_points/1
  def show
    render json: @access_point
  end

  # POST /access_points
  def create
    @access_point = AccessPoint.new(access_point_params)

    if @access_point.save
      render json: @access_point, status: :created, location: @access_point
    else
      render json: @access_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /access_points/1
  def update
    if @access_point.update(access_point_params)
      render json: @access_point
    else
      render json: @access_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /access_points/1
  def destroy
    @access_point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_point
      @access_point = AccessPoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def access_point_params
      params.require(:access_point).permit(:ssid, :bssid, :mac_address, :nearby_point)
    end
end

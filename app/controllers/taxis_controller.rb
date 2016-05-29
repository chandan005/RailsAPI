class TaxisController < ApplicationController
  before_action :set_taxi, only: [:show, :update, :destroy]

  # GET /taxis
  def index
    @taxis = Taxi.all

    render json: @taxis
  end

  # GET /taxis/1
  def show
    render json: @taxi
  end

  # POST /taxis
  def create
    @taxi = Taxi.new(taxi_params)

    if @taxi.save
      render json: @taxi, status: :created, location: @taxi
    else
      render json: @taxi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taxis/1
  def update
    if @taxi.update(taxi_params)
      render json: @taxi
    else
      render json: @taxi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taxis/1
  def destroy
    @taxi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxi
      @taxi = Taxi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def taxi_params
      params.require(:taxi).permit(:taxi_number, :taxi_availability)
    end
end

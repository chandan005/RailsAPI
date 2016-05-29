class InternationalsController < ApplicationController
  before_action :set_international, only: [:show, :update, :destroy]

  # GET /internationals
  def index
    @internationals = International.all

    render json: @internationals
  end

  # GET /internationals/1
  def show
    render json: @international
  end

  # POST /internationals
  def create
    @international = International.new(international_params)

    if @international.save
      render json: @international, status: :created, location: @international
    else
      render json: @international.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /internationals/1
  def update
    if @international.update(international_params)
      render json: @international
    else
      render json: @international.errors, status: :unprocessable_entity
    end
  end

  # DELETE /internationals/1
  def destroy
    @international.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_international
      @international = International.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def international_params
      params.require(:international).permit(:tapped_timestamp, :mac_address)
    end
end

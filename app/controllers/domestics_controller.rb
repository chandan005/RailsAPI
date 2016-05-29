class DomesticsController < ApplicationController
  before_action :set_domestic, only: [:show, :update, :destroy]

  # GET /domestics
  def index
    @domestics = Domestic.all

    render json: @domestics
  end

  # GET /domestics/1
  def show
    render json: @domestic
  end

  # POST /domestics
  def create
    @domestic = Domestic.new(domestic_params)

    if @domestic.save
      render json: @domestic, status: :created, location: @domestic
    else
      render json: @domestic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /domestics/1
  def update
    if @domestic.update(domestic_params)
      render json: @domestic
    else
      render json: @domestic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /domestics/1
  def destroy
    @domestic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domestic
      @domestic = Domestic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def domestic_params
      params.require(:domestic).permit(:tapped_timestamp, :mac_address)
    end
end

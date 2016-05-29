class SkybusT3sController < ApplicationController
  before_action :set_skybus_t3, only: [:show, :update, :destroy]

  # GET /skybus_t3s
  def index
    @skybus_t3s = SkybusT3.all

    render json: @skybus_t3s
  end

  # GET /skybus_t3s/1
  def show
    render json: @skybus_t3
  end

  # POST /skybus_t3s
  def create
    @skybus_t3 = SkybusT3.new(skybus_t3_params)

    if @skybus_t3.save
      render json: @skybus_t3, status: :created, location: @skybus_t3
    else
      render json: @skybus_t3.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skybus_t3s/1
  def update
    if @skybus_t3.update(skybus_t3_params)
      render json: @skybus_t3
    else
      render json: @skybus_t3.errors, status: :unprocessable_entity
    end
  end

# Query time greater than now
  def timeQueries
    t = Time.now
    greaterTimes = Array.new
    times = SkybusT3.all

    times.each do |l|
      if l.timetable.to_time > t
        greaterTimes.push(l)
      end
    end

    if greaterTimes.count < 10
      times.each do |m|
        greaterTimes.push(m)
      end
    end

    render json: greaterTimes
  end

  # DELETE /skybus_t3s/1
  def destroy
    @skybus_t3.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skybus_t3
      @skybus_t3 = SkybusT3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skybus_t3_params
      params.require(:skybus_t3).permit(:timetable)
    end
end

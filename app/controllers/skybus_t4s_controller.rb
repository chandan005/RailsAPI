class SkybusT4sController < ApplicationController
  before_action :set_skybus_t4, only: [:show, :update, :destroy]

  # GET /skybus_t4s
  def index
    @skybus_t4s = SkybusT4.all

    render json: @skybus_t4s
  end

  # GET /skybus_t4s/1
  def show
    render json: @skybus_t4
  end

  # POST /skybus_t4s
  def create
    @skybus_t4 = SkybusT4.new(skybus_t4_params)

    if @skybus_t4.save
      render json: @skybus_t4, status: :created, location: @skybus_t4
    else
      render json: @skybus_t4.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skybus_t4s/1
  def update
    if @skybus_t4.update(skybus_t4_params)
      render json: @skybus_t4
    else
      render json: @skybus_t4.errors, status: :unprocessable_entity
    end
  end

# Query time greater than now
  def timeQueries
    t = Time.now
    greaterTimes = Array.new
    times = SkybusT4.all

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

  # DELETE /skybus_t4s/1
  def destroy
    @skybus_t4.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skybus_t4
      @skybus_t4 = SkybusT4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skybus_t4_params
      params.require(:skybus_t4).permit(:timetable)
    end
end

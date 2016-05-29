class SkybusT1sController < ApplicationController
  before_action :set_skybus_t1, only: [:show, :update, :destroy]

  # GET /skybus_t1s
  def index
    @skybus_t1s = SkybusT1.all

    render json: @skybus_t1s
  end

  # GET /skybus_t1s/1
  def show
    render json: @skybus_t1
  end

  # POST /skybus_t1s
  def create
    @skybus_t1 = SkybusT1.new(skybus_t1_params)

    if @skybus_t1.save
      render json: @skybus_t1, status: :created, location: @skybus_t1
    else
      render json: @skybus_t1.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skybus_t1s/1
  def update
    if @skybus_t1.update(skybus_t1_params)
      render json: @skybus_t1
    else
      render json: @skybus_t1.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skybus_t1s/1
  def destroy
    @skybus_t1.destroy
  end

# Query time greater than now
  def timeQueries
    t = Time.now.localtime
    greaterTimes = Array.new
    times = SkybusT1.all

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

  # Query all terminal times greater than now
  def allTimeQueries
    t = Time.now.localtime
    allGreaterTimes = Array.new
    times1 = SkybusT1.all
    times3 = SkybusT3.all
    times4 = SkybusT4.all

    allTimes = times1 + times3 + times4

    allTimes.each do |c|
      if c.timetable.to_time > t
        allGreaterTimes.push(c)
      end
    end

    if allGreaterTimes.count < 10
      allTimes.each do |k|
        allGreaterTimes.push(k)
      end
    end

    render json: allGreaterTimes
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skybus_t1
      @skybus_t1 = SkybusT1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skybus_t1_params
      params.require(:skybus_t1).permit(:timetable)
    end
end

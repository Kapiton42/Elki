class DoNotStopsController < ApplicationController
  before_action :set_do_not_stop, only: [:show, :edit, :update, :destroy]

  # GET /do_not_stops
  # GET /do_not_stops.json
  def index
    @do_not_stops = DoNotStop.all
  end

  # GET /do_not_stops/1
  # GET /do_not_stops/1.json
  def show
  end

  # GET /do_not_stops/new
  def new
    @do_not_stop = DoNotStop.new
  end

  # GET /do_not_stops/1/edit
  def edit
  end

  # POST /do_not_stops
  # POST /do_not_stops.json
  def create
    @do_not_stop = DoNotStop.new(do_not_stop_params)

    respond_to do |format|
      if @do_not_stop.save
        format.html { redirect_to @do_not_stop, notice: 'Do not stop was successfully created.' }
        format.json { render :show, status: :created, location: @do_not_stop }
      else
        format.html { render :new }
        format.json { render json: @do_not_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /do_not_stops/1
  # PATCH/PUT /do_not_stops/1.json
  def update
    respond_to do |format|
      if @do_not_stop.update(do_not_stop_params)
        format.html { redirect_to @do_not_stop, notice: 'Do not stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @do_not_stop }
      else
        format.html { render :edit }
        format.json { render json: @do_not_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /do_not_stops/1
  # DELETE /do_not_stops/1.json
  def destroy
    @do_not_stop.destroy
    respond_to do |format|
      format.html { redirect_to do_not_stops_url, notice: 'Do not stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do_not_stop
      @do_not_stop = DoNotStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def do_not_stop_params
      params.require(:do_not_stop).permit(:station_id, :graphik_id)
    end
end

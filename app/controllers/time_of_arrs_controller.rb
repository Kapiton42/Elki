class TimeOfArrsController < ApplicationController
  before_action :set_time_of_arr, only: [:show, :edit, :update, :destroy]

  # GET /time_of_arrs
  # GET /time_of_arrs.json
  def index
    @time_of_arrs = TimeOfArr.all
  end

  # GET /time_of_arrs/1
  # GET /time_of_arrs/1.json
  def show
  end

  # GET /time_of_arrs/new
  def new
    @time_of_arr = TimeOfArr.new
  end

  # GET /time_of_arrs/1/edit
  def edit
  end

  # POST /time_of_arrs
  # POST /time_of_arrs.json
  def create
    @time_of_arr = TimeOfArr.new(time_of_arr_params)

    respond_to do |format|
      if @time_of_arr.save
        format.html { redirect_to @time_of_arr, notice: 'Time of arr was successfully created.' }
        format.json { render :show, status: :created, location: @time_of_arr }
      else
        format.html { render :new }
        format.json { render json: @time_of_arr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_of_arrs/1
  # PATCH/PUT /time_of_arrs/1.json
  def update
    respond_to do |format|
      if @time_of_arr.update(time_of_arr_params)
        format.html { redirect_to @time_of_arr, notice: 'Time of arr was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_of_arr }
      else
        format.html { render :edit }
        format.json { render json: @time_of_arr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_of_arrs/1
  # DELETE /time_of_arrs/1.json
  def destroy
    @time_of_arr.destroy
    respond_to do |format|
      format.html { redirect_to time_of_arrs_url, notice: 'Time of arr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_of_arr
      @time_of_arr = TimeOfArr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_of_arr_params
      params.require(:time_of_arr).permit(:timeOfArrival, :station_id, :graphik_id)
    end
end

class GraphiksController < ApplicationController
  before_action :set_graphik, only: [:show, :edit, :update, :destroy]

  # GET /graphiks
  # GET /graphiks.json
  def index
    @graphiks = Graphik.all
  end

  # GET /graphiks/1
  # GET /graphiks/1.json
  def show
  end

  # GET /graphiks/new
  def new
    @graphik = Graphik.new
  end

  # GET /graphiks/1/edit
  def edit
  end

  # POST /graphiks
  # POST /graphiks.json
  def create
    @graphik = Graphik.new(graphik_params)

    respond_to do |format|
      if @graphik.save
        format.html { redirect_to @graphik, notice: 'Graphik was successfully created.' }
        format.json { render :show, status: :created, location: @graphik }
      else
        format.html { render :new }
        format.json { render json: @graphik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graphiks/1
  # PATCH/PUT /graphiks/1.json
  def update
    respond_to do |format|
      if @graphik.update(graphik_params)
        format.html { redirect_to @graphik, notice: 'Graphik was successfully updated.' }
        format.json { render :show, status: :ok, location: @graphik }
      else
        format.html { render :edit }
        format.json { render json: @graphik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graphiks/1
  # DELETE /graphiks/1.json
  def destroy
    @graphik.destroy
    respond_to do |format|
      format.html { redirect_to graphiks_url, notice: 'Graphik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graphik
      @graphik = Graphik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graphik_params
      params.require(:graphik).permit(:station_begin_id, :station_end_id)
    end
end

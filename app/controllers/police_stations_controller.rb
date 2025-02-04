class PoliceStationsController < ApplicationController
  before_action :set_police_station, only: [:show, :edit, :update, :destroy]

  # GET /police_stations
  # GET /police_stations.json
  def index
    @police_stations = PoliceStation.all
  end
  
   def insert
    @p=PoliceStation.find_by_id(params[:id][:id])
    @the_case=TheCase.new
    @the_case.title=params[:the_case][:title]
    @the_case.type_case=params[:the_case][:type_case]
    @the_case.complainant_cin=params[:the_case][:complainant_cin]
    @the_case.complainant_first_name=params[:the_case][:complainant_first_name]
    @the_case.complainant_last_name=params[:the_case][:complainant_last_name]
    @the_case.complainant_telephone=params[:the_case][:complainant_telephone]
    @the_case.location=params[:the_case][:location]
    @the_case.address=params[:the_case][:address]
    @p.the_cases << @the_case
    redirect_to request.referrer, notice: "New case added ..."
   end
   
  # GET /police_stations/1
  # GET /police_stations/1.json
  def show
    @p=PoliceStation.find(params[:id])
    @the_cases=@p.the_cases
  end

  # GET /police_stations/new
  def new
    @police_station = PoliceStation.new
  end

  # GET /police_stations/1/edit
  def edit
  end

  # POST /police_stations
  # POST /police_stations.json
  def create
    @police_station = PoliceStation.new(police_station_params)
    respond_to do |format|
      if @police_station.save
        format.html { redirect_to @police_station, notice: 'Police station was successfully created.' }
        format.json { render :show, status: :created, location: @police_station }
      else
        format.html { render :new }
        format.json { render json: @police_station.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /police_stations/1
  # PATCH/PUT /police_stations/1.json
  def update
    respond_to do |format|
      if @police_station.update(police_station_params)
        format.html { redirect_to @police_station, notice: 'Police station was successfully updated.' }
        format.json { render :show, status: :ok, location: @police_station }
      else
        format.html { render :edit }
        format.json { render json: @police_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police_stations/1
  # DELETE /police_stations/1.json
  def destroy
    @police_station.destroy
    flash.now[:notice] = 'Police station deleted ...'
    redirect_to request.referrer, notice: "Police station deleted ..."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police_station
      @police_station = PoliceStation.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def police_station_params
      params.require(:police_station).permit(:title , :address , :postal_code, :telephone, :fax)
    end
    
end
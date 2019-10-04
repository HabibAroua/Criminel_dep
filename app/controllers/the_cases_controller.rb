class TheCasesController < ApplicationController
  before_action :set_the_case, only: [:show, :edit, :update, :destroy]

  # GET /the_cases
  # GET /the_cases.json
  def index
    @the_cases = TheCase.all
  end

  # GET /the_cases/1
  # GET /the_cases/1.json
  def show
    @the_case=TheCase.find_by_id(params[:id])
    @victims=@the_case.victims
    @culprits=@the_case.culprits
    @proofs=@the_case.proofs
    @waitnesses=@the_case.waitnesses
  end

  # GET /the_cases/new
  def new
    @the_case = TheCase.new
  end

  # GET /the_cases/1/edit
  def edit
  end

  # POST /the_cases
  # POST /the_cases.json
  def create
    @the_case = TheCase.new(the_case_params)

    respond_to do |format|
      if @the_case.save
        format.html { redirect_to @the_case, notice: 'The case was successfully created.' }
        format.json { render :show, status: :created, location: @the_case }
      else
        format.html { render :new }
        format.json { render json: @the_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_cases/1
  # PATCH/PUT /the_cases/1.json
  def update
    respond_to do |format|
      if @the_case.update(the_case_params)
        format.html { redirect_to @the_case, notice: 'The case was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_case }
      else
        format.html { render :edit }
        format.json { render json: @the_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_cases/1
  # DELETE /the_cases/1.json
  def destroy
    @the_case.destroy
    respond_to do |format|
      format.html { redirect_to the_cases_url, notice: 'The case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  ####################################################################################
  #For menage the part of case
  def insert_victim
    require 'date'
    @the_case=TheCase.find_by_id(params[:id][:id])
    @v=Victim.new
    @v.cin=params[:victim][:cin]
    @v.first_name=params[:victim][:first_name]
    @v.last_name=params[:victim][:last_name]
    @v.problem=params[:victim][:problem]
    @v.cause_of_death= params[:victim][:cause_of_death]
    @v.date_of_death=DateTime.parse(params[:victim][:date_of_death])
    @the_case.victims << @v
    redirect_to request.referrer, notice: "Victim added ..."
  end
  
  def insert_culprit
    require 'date'
    @the_case=TheCase.find_by_id(params[:id][:id])
  end
  
  def insert_proof
    require 'date'
    @the_case=TheCase.find_by_id(params[:id][:id])
  end
  
  def insert_waitness
    require 'date'
    @the_case=TheCase.find_by_id(params[:id][:id])
  end
################################################################################

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_case
      @the_case = TheCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_case_params
      params.require(:the_case).permit(:title, :type_case, :complainant_cin, :complainant_first_name, :complainant_last_name, :complainant_telephone, :location, :address)
    end
end

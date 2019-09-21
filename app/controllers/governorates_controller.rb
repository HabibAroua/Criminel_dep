class GovernoratesController < ApplicationController
  before_action :set_governorate, only: [:show, :edit, :update, :destroy]

  # GET /governorates
  # GET /governorates.json
  def index
    @governorates = Governorate.all
  end

  # GET /governorates/1
  # GET /governorates/1.json
  def show
  end

  # GET /governorates/new
  def new
    if current_user.rule == 1
       redirect_to :action => "index"
    else
      @governorate = Governorate.new
    end
  end

  # GET /governorates/1/edit
  def edit
  end

  # POST /governorates
  # POST /governorates.json
  def create
    @governorate = Governorate.new(governorate_params)

    respond_to do |format|
      if @governorate.save
        format.html { redirect_to @governorate, notice: 'Governorate was successfully created.' }
        format.json { render :show, status: :created, location: @governorate }
      else
        format.html { render :new }
        format.json { render json: @governorate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /governorates/1
  # PATCH/PUT /governorates/1.json
  def update
    respond_to do |format|
      if @governorate.update(governorate_params)
        format.html { redirect_to @governorate, notice: 'Governorate was successfully updated.' }
        format.json { render :show, status: :ok, location: @governorate }
      else
        format.html { render :edit }
        format.json { render json: @governorate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /governorates/1
  # DELETE /governorates/1.json
  def destroy
    @governorate.destroy
    respond_to do |format|
      format.html { redirect_to governorates_url, notice: 'Governorate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_governorate
      @governorate = Governorate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def governorate_params
      params.require(:governorate).permit(:name, :population, :zone)
    end
end
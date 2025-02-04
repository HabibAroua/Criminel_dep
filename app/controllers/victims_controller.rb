class VictimsController < ApplicationController
  before_action :set_victim, only: [:show, :edit, :update, :destroy]

  # GET /victims
  # GET /victims.json
  def index
    @victims = Victim.all
  end

  # GET /victims/1
  # GET /victims/1.json
  def show
  end

  # GET /victims/new
  def new
    @victim = Victim.new
  end

  # GET /victims/1/edit
  def edit
  end

  # POST /victims
  # POST /victims.json
  def create
    @victim = Victim.new(victim_params)

    respond_to do |format|
      if @victim.save
        format.html { redirect_to @victim, notice: 'Victim was successfully created.' }
        format.json { render :show, status: :created, location: @victim }
      else
        format.html { render :new }
        format.json { render json: @victim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /victims/1
  # PATCH/PUT /victims/1.json
  def update
    respond_to do |format|
      if @victim.update(victim_params)
        format.html { redirect_to @victim, notice: 'Victim was successfully updated.' }
        format.json { render :show, status: :ok, location: @victim }
      else
        format.html { render :edit }
        format.json { render json: @victim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /victims/1
  # DELETE /victims/1.json
  def destroy
    @victim.destroy
    respond_to do |format|
      format.html { redirect_to victims_url, notice: 'Victim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_victim
      @victim = Victim.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def victim_params
      params.require(:victim).permit(:cin, :first_name, :last_name, :problem, :cause_of_death, :date_of_death)
    end
end

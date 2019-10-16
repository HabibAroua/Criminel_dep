class CulpritsController < ApplicationController
  before_action :set_culprit, only: [:show, :edit, :update, :destroy]

  # GET /culprits
  # GET /culprits.json
  def index
    @culprits = Culprit.all
  end

  # GET /culprits/1
  # GET /culprits/1.json
  def show
  end

  # GET /culprits/new
  def new
    @culprit = Culprit.new
  end

  # GET /culprits/1/edit
  def edit
  end

  # POST /culprits
  # POST /culprits.json
  def create
    @culprit = Culprit.new(culprit_params)

    respond_to do |format|
      if @culprit.save
        format.html { redirect_to @culprit, notice: 'Culprit was successfully created.' }
        format.json { render :show, status: :created, location: @culprit }
      else
        format.html { render :new }
        format.json { render json: @culprit.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def wanted
  end

  # PATCH/PUT /culprits/1
  # PATCH/PUT /culprits/1.json
  def update
    respond_to do |format|
      if @culprit.update(culprit_params)
        format.html { redirect_to @culprit, notice: 'Culprit was successfully updated.' }
        format.json { render :show, status: :ok, location: @culprit }
      else
        format.html { render :edit }
        format.json { render json: @culprit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culprits/1
  # DELETE /culprits/1.json
  def destroy
    @culprit.destroy
    respond_to do |format|
      format.html { redirect_to culprits_url, notice: 'Culprit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culprit
      @culprit = Culprit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culprit_params
      params.require(:culprit).permit(:cin, :first_name, :last_name, :date_of_birth, :charged_for, :status, :content)
    end
end

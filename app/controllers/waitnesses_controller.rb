class WaitnessesController < ApplicationController
  before_action :set_waitness, only: [:show, :edit, :update, :destroy]

  # GET /waitnesses
  # GET /waitnesses.json
  def index
    @waitnesses = Waitness.all
  end

  # GET /waitnesses/1
  # GET /waitnesses/1.json
  def show
  end

  # GET /waitnesses/new
  def new
    @waitness = Waitness.new
  end

  # GET /waitnesses/1/edit
  def edit
  end

  # POST /waitnesses
  # POST /waitnesses.json
  def create
    @waitness = Waitness.new(waitness_params)

    respond_to do |format|
      if @waitness.save
        format.html { redirect_to @waitness, notice: 'Waitness was successfully created.' }
        format.json { render :show, status: :created, location: @waitness }
      else
        format.html { render :new }
        format.json { render json: @waitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waitnesses/1
  # PATCH/PUT /waitnesses/1.json
  def update
    respond_to do |format|
      if @waitness.update(waitness_params)
        format.html { redirect_to @waitness, notice: 'Waitness was successfully updated.' }
        format.json { render :show, status: :ok, location: @waitness }
      else
        format.html { render :edit }
        format.json { render json: @waitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waitnesses/1
  # DELETE /waitnesses/1.json
  def destroy
    @waitness.destroy
    respond_to do |format|
      format.html { redirect_to waitnesses_url, notice: 'Waitness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waitness
      @waitness = Waitness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waitness_params
      params.require(:waitness).permit(:cin, :first_name, :last_name, :telephone, :content)
    end
end

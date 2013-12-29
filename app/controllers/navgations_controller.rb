class NavgationsController < ApplicationController
  before_action :set_navgation, only: [:show, :edit, :update, :destroy]

  # GET /navgations
  # GET /navgations.json
  def index
    @navgations = Navgation.all
  end

  # GET /navgations/1
  # GET /navgations/1.json
  def show
  end

  # GET /navgations/new
  def new
    @navgation = Navgation.new
  end

  # GET /navgations/1/edit
  def edit
  end

  # POST /navgations
  # POST /navgations.json
  def create
    @navgation = Navgation.new(navgation_params)

    respond_to do |format|
      if @navgation.save
        format.html { redirect_to @navgation, notice: 'Navgation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @navgation }
      else
        format.html { render action: 'new' }
        format.json { render json: @navgation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navgations/1
  # PATCH/PUT /navgations/1.json
  def update
    respond_to do |format|
      if @navgation.update(navgation_params)
        format.html { redirect_to @navgation, notice: 'Navgation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @navgation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navgations/1
  # DELETE /navgations/1.json
  def destroy
    @navgation.destroy
    respond_to do |format|
      format.html { redirect_to navgations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navgation
      @navgation = Navgation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navgation_params
      params.require(:navgation).permit(:app_id, :nav_type_id, :status)
    end
end

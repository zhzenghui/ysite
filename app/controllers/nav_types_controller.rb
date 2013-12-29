class NavTypesController < ApplicationController
  before_action :set_nav_type, only: [:show, :edit, :update, :destroy]

  # GET /nav_types
  # GET /nav_types.json
  def index
    @nav_types = NavType.all
  end

  # GET /nav_types/1
  # GET /nav_types/1.json
  def show
  end

  # GET /nav_types/new
  def new
    @nav_type = NavType.new
  end

  # GET /nav_types/1/edit
  def edit
  end

  # POST /nav_types
  # POST /nav_types.json
  def create
    @nav_type = NavType.new(nav_type_params)

    respond_to do |format|
      if @nav_type.save
        format.html { redirect_to @nav_type, notice: 'Nav type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nav_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @nav_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nav_types/1
  # PATCH/PUT /nav_types/1.json
  def update
    respond_to do |format|
      if @nav_type.update(nav_type_params)
        format.html { redirect_to @nav_type, notice: 'Nav type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nav_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nav_types/1
  # DELETE /nav_types/1.json
  def destroy
    @nav_type.destroy
    respond_to do |format|
      format.html { redirect_to nav_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nav_type
      @nav_type = NavType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nav_type_params
      params.require(:nav_type).permit(:name, :show_name, :pic)
    end
end

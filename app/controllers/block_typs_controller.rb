class BlockTypsController < ApplicationController
  before_action :set_block_type, only: [:show, :edit, :update, :destroy]

  # GET /block_typs
  # GET /block_typs.json
  def index
    @block_types = BlockTyp.all
  end

  # GET /block_typs/1
  # GET /block_typs/1.json
  def show
  end

  # GET /block_typs/new
  def new
    @block_typ = BlockType.new
  end

  # GET /block_typs/1/edit
  def edit
  end

  # POST /block_typs
  # POST /block_typs.json
  def create
    @block_type = BlockType.new(block_type_params)

    respond_to do |format|
      if @block_type.save
        format.html { redirect_to @block_type, notice: 'Block typ was successfully created.' }
        format.json { render action: 'show', status: :created, location: @block_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @block_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /block_typs/1
  # PATCH/PUT /block_typs/1.json
  def update
    respond_to do |format|
      if @block_type.update(block_typ_params)
        format.html { redirect_to @block_type, notice: 'Block typ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @block_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_typs/1
  # DELETE /block_typs/1.json
  def destroy
    @block_type.destroy
    respond_to do |format|
      format.html { redirect_to block_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block_typ
      @block_type = BlockType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_type_params
      params.require(:block_type).permit(:show_name, :name)
    end
end

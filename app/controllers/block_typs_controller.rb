class BlockTypsController < ApplicationController
  before_action :set_block_typ, only: [:show, :edit, :update, :destroy]

  # GET /block_typs
  # GET /block_typs.json
  def index
    @block_typs = BlockTyp.all
  end

  # GET /block_typs/1
  # GET /block_typs/1.json
  def show
  end

  # GET /block_typs/new
  def new
    @block_typ = BlockTyp.new
  end

  # GET /block_typs/1/edit
  def edit
  end

  # POST /block_typs
  # POST /block_typs.json
  def create
    @block_typ = BlockTyp.new(block_typ_params)

    respond_to do |format|
      if @block_typ.save
        format.html { redirect_to @block_typ, notice: 'Block typ was successfully created.' }
        format.json { render action: 'show', status: :created, location: @block_typ }
      else
        format.html { render action: 'new' }
        format.json { render json: @block_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /block_typs/1
  # PATCH/PUT /block_typs/1.json
  def update
    respond_to do |format|
      if @block_typ.update(block_typ_params)
        format.html { redirect_to @block_typ, notice: 'Block typ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @block_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_typs/1
  # DELETE /block_typs/1.json
  def destroy
    @block_typ.destroy
    respond_to do |format|
      format.html { redirect_to block_typs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block_typ
      @block_typ = BlockTyp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_typ_params
      params.require(:block_typ).permit(:show_name, :name)
    end
end

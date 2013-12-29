class AppsController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  def index
    @title = "所有的Apps"
    @user = current_user
    @apps = @user.apps.paginate(page: params[:page])
    render "index"
  end

  def update
    respond_to do |format|
      if @app.update(params)
        format.html { redirect_to @hero, notice: 'Hero was successfully updated.' }
        format.json { head :no_content }
      else
        
        format.html { render action: 'edit' }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @user = current_user
    
    @app = App.find(params[:id])
  end
  

  
  private

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
  
  
  def set_app
    logger.info(params)
    @app = App.find(params[:id])
  end


  def app_params
    params.require(:app).permit(:name)
  end
  
  
  end

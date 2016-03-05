class CommutersController < ApplicationController
  before_action :authorize, only: [:profile, :edit, :index]
  before_action :admin_user,     only: :destroy

  def index
    @commuters = Commuter.paginate(page: params[:page])
  end

  def show
    @commuter = Commuter.find(params[:id])
  end

  def profile
  end

  def new
    @commuter = Commuter.new
  end

  def create
    @commuter = Commuter.new(commuter_params)
    if @commuter.save
      flash[:success] = "Welcome to Wheelz!"
      redirect_to @commuter
    else
      render 'new'
    end
  end

  def edit
    @commuter = Commuter.find(params[:id])
  end

  def destroy
    Commuter.find(params[:id]).destroy
    flash[:success] = "Commuter deleted"
    redirect_to commuters_url
  end

  private
  def commuter_params
    params.require(:commuter).permit(:name, :email, :password, :password_confirmation)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end

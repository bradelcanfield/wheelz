class CommutersController < ApplicationController
  before_action :authorize, only: [:profile, :edit]

  def profile
  end

  def new
  end

  def create
    commuter = Commuter.new(commuter_params)
    if commuter.save
      session[:commuter_id] = commuter.id
      redirect_to '/profile'
    else
      flash[:danger] = 'Name, email, and password fields must be filled.'
      redirect_to '/profile/new'
    end
  end

  def edit
  end

  private
  def commuter_params
    params.require(:commuter).permit(:name, :email, :password, :password_confirmation)
  end
end

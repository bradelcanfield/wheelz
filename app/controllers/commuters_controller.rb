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
      redirect_to '/'
    end
  end

  def edit
  end

  private
  def commuter_params
    params.require(:commuter).permit(:name, :email, :password, :password_confirmation)
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    commuter = Commuter.find_by_email(params[:email])
    if commuter && commuter.authenticate(params[:password])
      session[:commuter_id] = commuter.id
      redirect_to '/'
    else
      # we should create a flash method for incorrect input
      redirect_to '/login'
    end
  end

  def destroy
    session[:commuter_id] = nil
    redirect_to '/login'
  end

end

class HomeController < ApplicationController
  def about
  end

  def set_layout
    session["layout"] = (params[:mobile] == "1" ? "mobile" : "normal")
    redirect_to :action => "home"
  end
end

class RoutesController < ApplicationController
  before_filter :authorize
  def index
    if params[:search]
      @routes = Route.search(params[:search]).order("created_at DESC")
    else
      @routes = Route.order("created_at DESC")
    end
  end

  def routes_search
    @search = Route.new
  end

  def routes_search_create
    @search = Route.new(route_params)
    respond_to do |format|
      if @search.save
        format.html { redirect_to profile_path}
      else
        format.html { render :routes_search}
      end
    end
  end

  private
  def route_params
    params.require(:route).permit(:start_pt)
  end
end

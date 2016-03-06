class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all
  protect_from_forgery with: :exception
  layout :detect_browser

  def current_user
    @current_user ||= Commuter.find(session[:commuter_id]) if session[:commuter_id]
  end
  helper_method :current_user

  def authorize
    redirect_to'/login' unless current_user
  end

  private
  MOBILE_BROWSERS = ["android", "ipod", "ipad", "iphone", "opera mini", "blackberry", "palm", "hiptop", "avantgo", "plucker", "xiino", "blazer", "elaine", "windows ce; ppc;", "windows ce; smartphone", "windows cd; iemobile", "up.browser", "up.link", "mmp", "symbian", "smartphone", "midp", "wap", "vodafone", "o2", "pocket", "kindle", "mobile", "pda", "psp", "treo"]

  def detect_browser
    layout = selected_layout
    return layout if layout
    agent = request.headers["HTTP_USER_AGENT"].downcase
    MOBILE_BROWSERS.each do |m|
      return "mobile application" if agent == m
    end
    return "application"
  end

  def selected_layout
    session.inspect #force session load
    if session.has_key? "layout"
      return (session["layout"] == "mobile") ?
      "mobile_application" : "application"
    end
    return nil
  end

end

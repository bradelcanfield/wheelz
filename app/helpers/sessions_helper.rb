module SessionsHelper
  # Logs in the given user.
  def log_in(commuter)
    session[:commuter_id] = commuter.id
  end

  # Returns the current logged-in user (if any).
  def current_commuter
    @current_commuter ||= Commuter.find_by(id: session[:commuter_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
   !current_commuter.nil?
  end
end

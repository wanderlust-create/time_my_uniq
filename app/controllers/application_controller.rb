class ApplicationController < ActionController::Base
  helper_method :current_user, :require_user, :logged_in?

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user
  end

  def require_user
    return if current_user

    flash[:alert] = t('.error.user_not_found')
    redirect_to '/'
  end
end

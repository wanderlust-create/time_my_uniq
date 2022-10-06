class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user

    def current_user
        if session[:access_token]
            session[:access_token]
        end
    end

    def require_user
        if!current_user
            flash[:alert] = "Please log in or register for an account"
            redirect_to root_path
        end 
    end

    def logged_in?
        !!current_user
    end 

end

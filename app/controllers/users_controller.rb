class UsersController < ApplicationController
    before_action :require_user, except [:authorize]
    def authorize
        auth_hash = request.env['omniauth.auth']
        session[:access_token] = auth_hash[:credentials][:token]
        session[:email] = auth_hash[:info][:email]
        redirect_to dashboard_path
    end 

    def index
        
    end


end 
class SessionsController < ApplicationController
    def create
      user = User.find_by(name: login_params[:name])
      if user
        session[:user_id] = user.id
        redirect_to '/dashboard'
      else
        flash[:login_errors] = ['invalid credentials']
        render 'new'
      end
    end
  
    private
  
    def login_params
      params.require(:login).permit(:name)
    end
  end

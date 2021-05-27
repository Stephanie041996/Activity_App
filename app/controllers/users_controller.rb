class UsersController < ApplicationController
    
    def index; end
  
    def show
      @user = User.find(params[:id])
      # @user_activities = current_user.activities
      
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        # log_in @user
        session[:user_id] = @user.id
        redirect_to '/dashboard'
      else
        # flash[:register_errors] = user.errors.full_messages
        render 'new'
        # redirect_to '/'
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name)
    end
end
  

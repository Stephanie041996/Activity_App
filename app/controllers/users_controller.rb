class UsersController < ApplicationController
  def index; end

  def show
    redirect_to root_path unless session[:user_id]
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # log_in @user
      session[:user_id] = @user.id
      redirect_to @user
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

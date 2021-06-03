class SessionsController < ApplicationController
  def create
    user = User.find_by(name: login_params[:name])
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:login_errors] = ['invalid credentials']
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:danger] = 'User logged out'
    redirect_to root_path
  end

  private

  def login_params
    params.require(:login).permit(:name)
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end

class SessionsController < ApplicationController
  skip_before_filter :check_authentication
  
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      signin user
      # session[:user_id] = user.id
      # flash.now[:notice] = "You have logged in"
      redirect_to patients_path
    else
      flash.now[:error] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    # signout user
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to root_url
    # flash.now[:notice] = "You have been logged out"
  end
end
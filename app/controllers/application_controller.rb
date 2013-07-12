class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :check_authentication
  
  protect_from_forgery with: :exception
  
  def signin(user)
    session[:user_id] = user.id
    session[:user_type] = user.user_type
    session[:expire_time] = Time.now + 15.minutes
  end
  
  def signout
    session[:user_id] = nil
    session[:user_type] = nil
    session[:expire_time] = nil
    reset_session
  end
  
  def signedin?
    !session[:user_id].nil?
  end
  
  private
  def check_authentication
    if !signedin?
      flash.now[:error] = "You need a valid login & password to visit this area of application"
      redirect_to root_url
    end
  end
end

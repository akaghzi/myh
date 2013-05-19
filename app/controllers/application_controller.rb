class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def signin(user)
    session[:user_id] = user.id
    session[:user_type] = user.user_type
  end
  
  def signedin?
    !session[:user_id].nil?
  end
end

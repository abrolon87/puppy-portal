class ApplicationController < ActionController::Base

  helper_method :current_user 
  helper_method :logged_in?
  helper_method :find_user
  helper_method :find_puppy
  
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !!current_user
  end

  def redirect_if_not_logged_in
    redirect_to '/' if !logged_in?
  end
  
  def find_user
    @user = User.find(params[:id])
  end

  def find_puppy 
    @puppy = Puppy.find(params[:id])
  end
end

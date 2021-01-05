class SessionsController < ApplicationController
  def home 
  end

  def login 
  end

  def create 
    user = User.find_by(username: params[:user][:username])
    
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user) # '/users/#{user.id}'
    else  
      flash[:message] = "Invalid Login Info, Please Try Again"
      redirect_to '/login'
    end
  end

end

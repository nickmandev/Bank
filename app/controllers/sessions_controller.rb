require 'bcrypt'
class SessionsController < ApplicationController

  def new
  end

  def create
    usr = User.find_by_email(session_params[:email])
    if usr && usr.authenticate(session_params[:password])
      session[:user_id] = usr.id
      redirect_to '/user/show'
    else
      render 'new'
    end
  end

  def info
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
private
  def session_params
    params.require(:session).permit(:email,:password)
  end
end

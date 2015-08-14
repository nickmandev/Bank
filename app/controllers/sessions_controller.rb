require 'devise'
class SessionsController < ApplicationController

  def new
  end

  def create(username)
    user = User.authenticate(params[:session][:email],params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid password/email combination."
      render 'new'
    else
      sign_in user
      redirect_to '/user/show'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end

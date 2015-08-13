require 'devise'
class SessionsController < ApplicationController

  def new
  end

  def create(username)
    user = find_by_username(username)
    if user && user.authenticate_by_username(username,password)
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end

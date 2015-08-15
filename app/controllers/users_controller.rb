require 'bcrypt'
class UsersController < ApplicationController


  def new
  #empty for now..
  end

  def create
    user = User.new(user_params)
     if user.save
       session[:user_id] = user.id
       redirect_to "login"
     else
       flash[:notice] = "There's a problem."
       render 'new'
     end
  def show
    user = User.current_user
  end

  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end


require 'bcrypt'
class UsersController < ApplicationController

  
  def new
  #empty for now..
  end

  def create
    user = User.new(user_params)

     if user.save
       redirect_to "login", notice: "Successfully created an account."
     else
       render 'new', notice: "There's a problem."
     end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end


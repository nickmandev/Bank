class UsersController < ApplicationController


  def new
  #empty for now..
  end

  def create
    @users = User.new(user_params)
     if @users.save
       puts 'User created successfully'
       redirect_to '/login'
     else
       flash[:notice] = "There's a problem."
       render 'new'
     end
  def show
    @users=User.find(:all)
  end

  end

  private

  def user_params
    params.require(:users).permit(:username, :name, :password)
  end

end


class AccountsController < ApplicationController
  

  def new
  end

  def create
	#current_user = User.find_by_id(session[:user_id])
  account = current_user.accounts.create(account_params)
	 if account.save
      redirect_to user_show_path, notice: "Account created successfully" 
    else 
      render 'new', notice: 'Something went wrong!'
    end
  end


  def balance
    
  end

  private
  	def account_params
  		params.require(:account).permit(:name)
  	end

end


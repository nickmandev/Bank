class TransactionsController < ApplicationController

 def new
 end

 def create
 	current_user = User.find_by_id(session[:user_id])
 	balance = current_user.transactions.create(balance_params)
 	balance.save
 end

 def deposit
 	transaction = Transaction.find_by_id(params[:id])
	transaction.amount = transaction.amount + params[:deposit]
	transaction.save
 	
 end

private 
def balance_params
	params.require(:transaction).permit(:amount, :deposit)	
end


end

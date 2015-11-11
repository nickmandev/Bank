class TransactionsController < ApplicationController

 def new
 
 end

 def index
 	@balance = 0
 	account = Account.find_by_id(balance_params[:account_id])
 	balance = account.transactions.each do |bal|
 		if bal.transaction_type == 'Deposit'
		@balance += bal.amount
		else
		@balance -= bal.amount
		end
	end
end


 def deposit_form
 
 end


 def deposit
 	accounts = Account.find(balance_params[:account_id])
 	deposit =accounts.transactions.create(balance_params)
 	
 	if deposit.save
 		redirect_to "/user/show", notice: "Deposit was successful"
 	else 	
 		render "deposit_form", notice: "Deposit failed"
 	end
 end

def withdraw_form

end


def withdraw
	accounts = Account.find(balance_params[:account_id])
	withdraw =accounts.transactions.create(balance_params)
	if withdraw.save
		redirect_to "/user/show", notice: "Withdraw was successful"
	else 
		render 'withdraw_form', notice: "Withdraw failed"
	end
end



private 
def balance_params
	params.require(:transaction).permit(:transaction_type, :account_id, :amount, :deposit)	
end

end

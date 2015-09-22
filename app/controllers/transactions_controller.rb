class TransactionsController < ApplicationController

 def new
 
 end

 def create
 	balance =Transaction.new(balance_params)
 	balance.save
 end

 def deposit_form
 
 end


 def deposit
 	deposit =Transaction.new(balance_params)
 	
 	if deposit.save
 		redirect_to "/user/show", notice: "Deposit was successful"
 	else 	
 		render "/deposit", notice: "Deposit failed"
 	end
 end

def withdraw_form

end


def withdraw
	withdraw =Transaction.new(balance_params)
	
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

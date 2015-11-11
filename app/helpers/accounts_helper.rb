module AccountsHelper

def current_user_accounts
	current_user = User.find_by(id: session[:user_id])
	Account.all do |acc|
		if acc.user_id == current_user.id
			@accounts << acc.user_id
		end
		return @accounts
	end	
end

end

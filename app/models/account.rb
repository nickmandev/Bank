class Account < ActiveRecord::Base

belongs_to :user 
has_many   :transactions
validates  :user, presence: true
validates  :name,    presence: true	
	



end

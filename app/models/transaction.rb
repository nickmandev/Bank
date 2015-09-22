class Transaction < ActiveRecord::Base

belongs_to :account
has_many :deposits
has_many :withdraws

validates :account_id, presence: true



def transactions_types
	@transaction_types = [deposit , withdraw]
end

end

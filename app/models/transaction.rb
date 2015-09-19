class Transaction < ActiveRecord::Base

belongs_to :user
has_many :deposits
has_many :withdraws

validates :user_id, presence: true

def self.amount
	balance = Transaction.order(:id).last
 	balance = balance.amount.to_i
end


end

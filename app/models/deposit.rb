class Deposit < ActiveRecord::Base

	belongs_to :transaction, :foreign_key => "transaction_id"
end

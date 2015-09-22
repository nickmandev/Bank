class Account < ActiveRecord::Base

belongs_to :user 
has_many   :transactions, -> {order "name"}
validates  :user_id, presence: true
validates  :name,    presence: true

end

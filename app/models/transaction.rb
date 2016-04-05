class Transaction < ActiveRecord::Base

belongs_to :account

validates :account, presence: true

def convert
  currency = params[:transaction][:currency]
  convert = currency * params[:rates]
end

end

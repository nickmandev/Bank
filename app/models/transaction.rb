class Transaction < ActiveRecord::Base

def withdraw
@balance =
end

def deposit
deposit += amount
end

def amount

end


end

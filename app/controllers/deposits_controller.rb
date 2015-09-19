class DepositsController < ApplicationController

  def new

  end

  def create
    deposit = Deposit.new(deposit_params)
    deposit.save
  end


private
  def deposit_params
    params.require(:deposit).permit(:deposit)
  end

end

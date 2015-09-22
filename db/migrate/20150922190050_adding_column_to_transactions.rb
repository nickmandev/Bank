class AddingColumnToTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :transaction_type, :strings
  end
end

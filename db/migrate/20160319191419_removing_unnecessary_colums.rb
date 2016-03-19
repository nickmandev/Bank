class RemovingUnnecessaryColums < ActiveRecord::Migration
  def change
      remove_column :transactions, :user_id
      drop_table :deposits
  end
end

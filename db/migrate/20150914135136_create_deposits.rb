class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.belongs_to :transaction, index: true 
      t.integer :deposit
      t.timestamps null: false
    end
  end
end

class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.belongs_to :user, index: true
    	t.string :name
      t.timestamps null: false
    end
  end
end

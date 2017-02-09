class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
    	t.belongs_to :bookings, index: true
    	t.string :type
    	t.float :amount
    	t.string :details
    end
  end
end

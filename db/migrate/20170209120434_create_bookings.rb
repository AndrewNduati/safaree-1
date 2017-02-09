class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
    	t.belongs_to :users, index: true
    	t.belongs_to :experiences, index: true
    	t.date 		 :trip_date
    end
  end
end

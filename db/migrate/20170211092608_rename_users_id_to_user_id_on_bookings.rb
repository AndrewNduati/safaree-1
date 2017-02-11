class RenameUsersIdToUserIdOnBookings < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bookings, :users_id, :user_id
  end
end

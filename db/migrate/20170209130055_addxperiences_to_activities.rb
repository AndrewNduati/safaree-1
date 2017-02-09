class AddxperiencesToActivities < ActiveRecord::Migration[5.0]
  def change
  	add_reference :activities, :experiences, index: true, foreign_key: true
  end
end

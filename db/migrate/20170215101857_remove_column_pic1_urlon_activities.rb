class RemoveColumnPic1UrlonActivities < ActiveRecord::Migration[5.0]
  def change
  	remove_column :activities, :pic1_url
  end
end

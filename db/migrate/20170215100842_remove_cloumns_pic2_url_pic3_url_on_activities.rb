class RemoveCloumnsPic2UrlPic3UrlOnActivities < ActiveRecord::Migration[5.0]
  def change
  	remove_column :activities, :pic2_url
  	
  	remove_column :activities, :pic3_url
  end
end

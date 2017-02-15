class AddColumnPicturesonActivities < ActiveRecord::Migration[5.0]
  def change
  	add_column :activities, :pictures, :text, array: true, default:[]
  end
end

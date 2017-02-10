class RenameExperiencesIdToExperienceIdOnActivities < ActiveRecord::Migration[5.0]
  def change
  	rename_column :activities, :experiences_id, :experience_id
  end
end

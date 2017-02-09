class CreateExperienceReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :experience_reviews do |t|
      t.belongs_to :users, 		index: true
      t.belongs_to :activites,  index: true
      t.float      :ratings
      t.text       :comments
    end
  end
end

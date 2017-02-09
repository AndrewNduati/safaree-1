class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text   :title
      t.time   :start_time
      t.time   :end_time
      t.string :pic1_url
      t.string :pic2_url
      t.string :pic3_url
      t.date   :date
      t.string :location
      t.float  :price
    end
  end
end

class ChangePriceOnExperiences < ActiveRecord::Migration[5.0]
  def change
  	change_column :experiences, :price, :integer
  end
end

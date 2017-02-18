class ChangePriceOnActivitiess < ActiveRecord::Migration[5.0]
  def change
  	change_column :activities, :price, :integer
  end
end

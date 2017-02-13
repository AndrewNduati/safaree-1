class AddColumnPriceToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :price, :float
  end
end

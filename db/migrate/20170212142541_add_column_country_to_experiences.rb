class AddColumnCountryToExperiences < ActiveRecord::Migration[5.0]
  def change
  	add_column :experiences, :country, :string
  end
end

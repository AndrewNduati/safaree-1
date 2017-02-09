class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :avatar
      t.string :gender
      t.date   :birthday
      t.string :telephone
      t.string :city
      t.text   :Country
      t.text   :description
      t.text   :education
    end
  end
end

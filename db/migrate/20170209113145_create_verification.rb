class CreateVerification < ActiveRecord::Migration[5.0]
  def change
    create_table :verifications do |t|
      t.text   :nat_id
      t.string :facebook
      t.string :google
      t.string :twitter
      t.text   :phone
      t.string :email
    end
  end
end

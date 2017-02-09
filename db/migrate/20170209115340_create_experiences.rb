class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.belongs_to :user, index: true
      t.string  :title
      t.string  :tagline
      t.string  :poster_url
      t.string  :provided
      t.text    :notes
      t.date    :deadline
      t.text    :description
    end
  end
end

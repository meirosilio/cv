class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :position
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateExperienceSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :experience_skills do |t|
      t.references :skill, foreign_key: true
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end

class Skill < ApplicationRecord

  has_many :skill_users
  has_many :users, through: :skill_users

  has_many :experience_skills
  has_many :experiences, through: :experience_skills
end

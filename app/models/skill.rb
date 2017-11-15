class Skill < ApplicationRecord
  has_many :skill_users
  has_many :experience_skills
end

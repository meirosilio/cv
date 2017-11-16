class Experience < ApplicationRecord

  belongs_to :user
  belongs_to :category

  has_many :experience_skills
  has_many :skills, through: :experience_skills
end

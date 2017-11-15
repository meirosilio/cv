class Experience < ApplicationRecord
  belongs_to :User
  has_many :categorizations
  has_many :experience_skills
end

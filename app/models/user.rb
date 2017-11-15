class User < ApplicationRecord
  has_many :experiences
  has_many :skill_users
end

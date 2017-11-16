class Category < ApplicationRecord

  has_many :experiences
  validates :name , presence: true
  before_save :upercase

  private
  def upercase
    self.name.upcase!
  end


end

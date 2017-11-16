class Category < ApplicationRecord
  has_many :categorizations

  validates :name , presence: true
  before_save upcase

  private
  def upcase
    self.name.upcase!
  end
  
end

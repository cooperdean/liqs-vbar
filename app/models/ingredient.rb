class Ingredient < ActiveRecord::Base
  belongs_to :drink
  belongs_to :shelf

  validates :name, presence: true
  validates :category, presence: true

end

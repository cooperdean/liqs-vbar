class Ingredient < ActiveRecord::Base
  has_many :drinks
  has_many :shelfs
end

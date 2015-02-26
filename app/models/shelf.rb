class Shelf < ActiveRecord::Base
  has_many :ingredients, dependent: :nullify
end

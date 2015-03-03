class Shelf < ActiveRecord::Base
  has_many :ingredients, dependent: :nullify

  def included_in? array
    array.to_set.superset?(self.to_set)
  end

end

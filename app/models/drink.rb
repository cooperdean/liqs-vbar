class Drink < ActiveRecord::Base

  has_many :ingredients, dependent: :nullify
  has_many :directions, dependent: :destroy

  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank, :allow_destroy => true

  accepts_nested_attributes_for :directions, :reject_if => :all_blank, :allow_destroy => true


end

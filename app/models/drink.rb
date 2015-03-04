class Drink < ActiveRecord::Base

  has_many :ingredients
  has_many :directions, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank, :allow_destroy => true

  accepts_nested_attributes_for :directions, :reject_if => :all_blank, :allow_destroy => true


end

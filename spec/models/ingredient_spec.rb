require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe "Validations" do

    def ingredient_attributes(new_attributes)
      valid_atttributes = {
                            name: "name",
                            category: "string"
                          }
      valid_atttributes.merge(new_attributes)
    end

    it "requires a name" do
      ingredient = Ingredient.new(ingredient_attributes({name: nil}))
      expect(ingredient).to be_invalid
    end

    it "requires a category" do
      ingredient = Ingredient.new(ingredient_attributes({category: nil}))
      expect(ingredient).to be_invalid
    end
  end

  describe "association with drink" do
    it { should belong_to(:drink) }
    it { should belong_to(:shelf) }
  end

  describe 'column specifications' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:category).of_type(:string) }
  end

end

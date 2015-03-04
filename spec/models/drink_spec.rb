require 'rails_helper'

RSpec.describe Drink, type: :model do

   describe "Validations" do 
    def drink_attributes(new_attributes)
      valid_attributes = {
                            name: "valid name",
                            description: "valid description"
                         }
      valid_attributes.merge(new_attributes)
    end

    it 'requires a name' do
      drink = Drink.new(drink_attributes({name: nil}))
      expect(drink).to be_invalid
    end

    it 'requires a description' do
      drink = Drink.new(drink_attributes({description: nil}))
      expect(drink).to be_invalid
    end

    it 'requires the name to be unique' do
      Drink.create(drink_attributes({name: "name"}))
      drink = Drink.new(drink_attributes({name: "name"}))
      expect(drink).to be_invalid
    end
  end

  describe 'association with ingredients' do
    it { should have_many(:ingredients) }
  end

  describe 'column specification' do
    it { should have_db_column(:name).of_type(:string).with_options(
                                                                    presence: true, 
                                                                    uniqueness: true
                                                                    ) 
       }
    it { should have_db_column(:description).of_type(:text) }
  end

end

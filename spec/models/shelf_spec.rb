require 'rails_helper'

RSpec.describe Shelf, type: :model do

  describe "associations with ingredients" do
    it { should have_many(:ingredients) }
  end

end

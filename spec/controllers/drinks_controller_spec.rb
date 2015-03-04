require 'rails_helper'

RSpec.describe DrinksController, type: :controller do

  let(:drink) {create(:drink)}
  let(:drink_1) {create(:drink)}

  describe "#index" do

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "has a status 200 status code" do
      expect(response.code).to eq("200")
    end

    it "assigns an instance variable to drinks" do
      drink
      drink_1
      get :index
      expect(assigns(:drinks)).to eq([drink, drink_1])
    end
  end

  describe "#show" do
    it "has a 200 status code for show" do
      expect(response.code).to eq("200")
    end

    it "assigns a drink instance variable with passed id" do
      drink
      get :show, id: drink.id
      expect(assigns(:drink)).to eq(drink)
    end

    it "renders the show template" do
      drink
      get :show, id: drink.id
      expect(response).to render_template(:show)
    end
  end

  describe "create" do

    context "valid create request" do

      def valid_request
        post :create, { 
                        drink: {
                        name: "name",
                        description: "description"
                                }
                      }
      end

      it "adds a drink to the database" do
        expect { valid_request }.to change { Drink.count }.by(1)
      end

      it "has a 302 status cpde for a good redirect" do
        valid_request
        expect(response.code).to eq("302")
      end 

    end
  end

end

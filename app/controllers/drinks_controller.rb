class DrinksController < ApplicationController

  before_action :find_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find params[:id]
  end

  def new
    @drink = Drink.new
    @drink.ingredients.build
  end

  def create 
    @drink = Drink.new drink_params
      if @drink.save
        redirect_to @drink
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @drink.update drink_params
      redirect_to @drink
    else
      render :edit
    end
  end

  def destroy
    @drink.destroy
    redirect_to root_path
  end

private

  def find_drink
    @drink = Drink.find params[:id]
  end

  def drink_params
    params.require(:drink).permit(
                                  :name, :description, 
                                  ingredients_attributes: [:name, :category],
                                  directions_attributes: [:id, :step, :_destroy]
                                  )
  end 

end

class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find params[:id]
  end

  def new
    @drink = Drink.new
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
    @drink = Drink.find params[:id]
  end

  def update
    @drink.update
      if @drink.update
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

  def drink_params
    params.require(:drink).permit(:name, :description)
  end 

end

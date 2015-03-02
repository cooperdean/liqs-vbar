class ShelvesController < ApplicationController

before_action :find_shelf, only: [:show, :edit, :update]

  def index
  end

  def show
    @shelf = Shelf.find params[:id]
    @ingredients = Ingredient.all
  end

  def new
    @shelf = Shelf.new
  end

  def create
    @shelf = Shelf.new shelf_params
      if @shelf.save
        redirect_to @shelf
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @shelf.update shelf_params
      redirect_to @shelf
    else
      render :edit
    end
  end

  def add_ingredient
    @shelf = Shelf.find params[:shelf_id]
    @ingredient = Ingredient.find params[:id]
    @shelf.ingredients << @ingredient
    @shelf.save
    redirect_to(:back)
  end

private

  def find_shelf
    @shelf = Shelf.find params[:id]
  end

  def shelf_params
    params.require(:shelf).permit({ingredient_ids: []})
  end

end

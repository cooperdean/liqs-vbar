class IngredientsController < ApplicationController
  
  def new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new ingredient_params
    respond_to do |format|
      if @ingredient.save
        format.html { render :new }
        format.js { render }
      else
        format.html { render :new }
        format.js { render }
      end
    end
  end

  def edit
  end

  def update
    @ingredient.update ingredient_params
    redirect_to new_ingredient_path
  end

  def destroy
    @ingredient.destroy
  end

private

  def find_ingredient
    @ingredient = Ingredient.find params[:id]
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end

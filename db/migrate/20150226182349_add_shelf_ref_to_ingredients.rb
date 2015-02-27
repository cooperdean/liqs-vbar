class AddShelfRefToIngredients < ActiveRecord::Migration
  def change
    add_reference :ingredients, :shelf, index: true
    add_foreign_key :ingredients, :shelves
  end
end

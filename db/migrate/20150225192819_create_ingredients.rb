class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.belongs_to :drink, index: true

      t.timestamps null: false
    end
    add_foreign_key :ingredients, :drinks
  end
end

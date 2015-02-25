class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :step
      t.belongs_to :drink, index: true

      t.timestamps null: false
    end
    add_foreign_key :directions, :drinks
  end
end

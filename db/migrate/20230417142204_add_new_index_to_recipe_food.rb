class AddNewIndexToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_index :recipe_foods, :food_id
add_index :recipe_foods, :recipe_id
add_index :recipe_foods, :quantity
change_column_default :recipe_foods, :quantity, 0


  end
end

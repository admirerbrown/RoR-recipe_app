class AddIndexToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_index :recipe_foods, [:food_id, :recipe_id, :quantity]
  end
end

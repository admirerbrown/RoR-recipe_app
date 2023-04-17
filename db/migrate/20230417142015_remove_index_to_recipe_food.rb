class RemoveIndexToRecipeFood < ActiveRecord::Migration[7.0]
  def change
  remove_index :recipe_foods, [:food_id, :recipe_id, :quantity], name: "index_recipe_foods_on_food_id_and_recipe_id_and_quantity"

  end
end

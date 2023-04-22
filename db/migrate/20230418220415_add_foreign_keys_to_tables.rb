class AddForeignKeysToTables < ActiveRecord::Migration[7.0]
  def change
  add_foreign_key :recipes, :users, column: :user_id
  add_foreign_key :foods, :users, column: :user_id
  add_foreign_key :recipe_foods, :recipes, column: :recipe_id
  add_foreign_key :recipe_foods, :foods, column: :food_id

end

end

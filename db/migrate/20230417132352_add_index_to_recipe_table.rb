class AddIndexToRecipeTable < ActiveRecord::Migration[7.0]
  def change
    add_index :recipes, :user_id
  end
end

class AddDeleteCascadeToTable < ActiveRecord::Migration[7.0]
  def change
  change_table :recipe_foods do |t|
      t.remove_foreign_key :foods
      t.remove_foreign_key :recipes

      t.foreign_key :foods, on_delete: :cascade
      t.foreign_key :recipes, on_delete: :cascade
  end
  end
end

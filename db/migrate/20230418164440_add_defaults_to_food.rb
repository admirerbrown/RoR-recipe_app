class AddDefaultsToFood < ActiveRecord::Migration[7.0]
  def change
    add_index :foods, :user_id
change_column_default :foods, :quantity, 0
change_column_default :foods, :price, 0

  end
end

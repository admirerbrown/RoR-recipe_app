class ChangePublicColumn < ActiveRecord::Migration[7.0]
  def change
  remove_column :recipes, :public
  end
end

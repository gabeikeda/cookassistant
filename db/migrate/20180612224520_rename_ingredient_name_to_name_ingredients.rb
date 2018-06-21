class RenameIngredientNameToNameIngredients < ActiveRecord::Migration[5.2]
  def up
    rename_column :ingredients, :ingredient_name, :name
  end

  def down
    rename_column :ingredients, :name, :ingredient_name
  end
end

class RenameIngredientNameToNameIngredients < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :ingredient_name, :name
  end
end

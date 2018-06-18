class RemoveRecipeIdFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_index :recipes, :recipe_id
    remove_column :recipes, :recipe_id, :integer
  end
end

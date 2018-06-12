class AlterRecipesAddRecipeIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :recipe_id, :integer
    add_index :recipes, :recipe_id
  end
end

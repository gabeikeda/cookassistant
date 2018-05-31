class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :meal_type
      t.integer :cook_time
      t.integer :calories
      t.integer :serving_size
      t.text :description

      t.timestamps
    end
  end
end

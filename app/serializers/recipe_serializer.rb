class RecipeSerializer < ActiveModel::Serializer
  attributes :name,
             :meal_type,
             :cook_time,
             :calories,
             :serving_size,
             :description

  has_many :ingredients
end

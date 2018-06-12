# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all

meal_types = 
  [
    "breakfast",
    "lunch",
    "dinner",
    "snack"
  ]

descriptions = 
  [
    "Delicious quick meal",
    "Great for large parties",
    "Always love having this dish",
    "Yummy!"
  ]

  measurement = 
  [
    "1/3 teaspoon",
    "1/2 cup",
    "1/4 cup"
  ]

  ingredientname = 
  [
    "flour",
    "baking soda",
    "butter"
  ]


10.times do 
  Recipe.create( 
    name: Faker::Food.dish,
    meal_type: meal_types.sample,
    cook_time: Faker::Number.between(60, 120),
    calories: Faker::Number.between(100, 1500),
    serving_size: Faker::Number.between(1, 10),
    description: descriptions.sample
  )
end

10.times do 
  Ingredient.create(
    measurement: measurement.sample,
    ingredient_name: ingredientname.sample
  )
end

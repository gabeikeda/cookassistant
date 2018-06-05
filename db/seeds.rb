# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_al

meal_types = [
"breakfast",
"lunch",
"dinner"
"snack"
]

descriptions = [
  "Delicious quick meal",
  "Great for large parties",
  "Always love having this dish",
  "Yummy!"
]



10.times do 
  Recipe.new( 
    name: Faker::Food.dish
    meal_type: meal_types.sample
    cook_time: Faker::Number.between(60, 120)
    calories: Faker::Number.between(100, 1500)
    serving_size Faker::Number.between(1, 10)
    description: descriptions.sample
  )
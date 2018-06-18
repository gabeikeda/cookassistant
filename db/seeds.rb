# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all

orange_chicken = Recipe.create(name: 'Orange Chicken')
orange_chicken.ingredients.create!(name 'item1')


pesto_pasta = Recipe.create(name: 'Pesto Pasta')
pesto_past.ingredients.create!(name: 'item1', measurement: '1/3 cup')
pesto_past.ingredients.create!(name: 'item1', measurement: '1/3 cup')
pesto_past.ingredients.create!(name: 'item1', measurement: '1/3 cup')

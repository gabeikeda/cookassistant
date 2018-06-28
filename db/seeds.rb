# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all

pesto_pasta = Recipe.create(name: 'pesto ;asta',
  meal_type: "dinner",
  cook_time: 30,
  calories: 1500,
  serving_size: 4,
  description: "a delicious pasta dinner")
pesto_pasta.ingredients.create!(name: 'chopped onion', measurement: '1/2 cup')
pesto_pasta.ingredients.create!(name: 'pesto', measurement: '2 1/2 tablespoons')
pesto_pasta.ingredients.create!(name: 'olive oil', measurement: '2 tablespoons')
pesto_pasta.ingredients.create!(name: 'pasta', measurement: '16 ounces')
pesto_pasta.ingredients.create!(name: 'salt', measurement: 'a pinch')
pesto_pasta.ingredients.create!(name: 'black pepper', measurement: 'a pinch')

orange_chicken = Recipe.create(name: 'orange chicken')
orange_chicken.ingredients.create!(name: 'skinless, boneless chicken breast halves', measurement: '6')
orange_chicken.ingredients.create!(name: 'all-purpose flour', measurement: '1/4 cup')
orange_chicken.ingredients.create!(name: 'chicken broth', measurement: '1 can')
orange_chicken.ingredients.create!(name: 'lemon juice', measurement: '2 teaspoons')
orange_chicken.ingredients.create!(name: 'orange marmalade', measurement: '2/3 cup')
orange_chicken.ingredients.create!(name: 'ground black pepper', measurement: '1/4 teaspoon')

sugar_cookies = Recipe.create(name: 'sugar cookies')
sugar_cookies.ingredients.create!(name: 'all-purpose flour', measurement: '2 3/4 cups')
sugar_cookies.ingredients.create!(name: 'baking soda', measurement: '1 teaspoon')
sugar_cookies.ingredients.create!(name: 'salt', measurement: '1/2 teaspoon')
sugar_cookies.ingredients.create!(name: 'margarine', measurement: '1 1/4 cup')
sugar_cookies.ingredients.create!(name: 'white sugar', measurement: '2 cups')
sugar_cookies.ingredients.create!(name: 'eggs', measurement: '2')
sugar_cookies.ingredients.create!(name: 'vanilla extract', measurement: '2 teaspoons')
sugar_cookies.ingredients.create!(name: 'white sugar (for decoration)', measurement: '1/4 cup')

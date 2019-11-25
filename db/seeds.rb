# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.t name: 'Star W  name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'Cleaning data base...'
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repo = open(url).read()
ending = JSON.parse(repo)
e = ending.flatten[1]
e.each do |item|
  cocktail = Ingredient.create!(
    name: item['strIngredient1']
  )
end

# 100.times do
#   Dose.create!(
#     description: Faker::Measurement.volume,
#     cocktail: Cocktail.create!(name: Faker::Name.name),
#     ingredient: Ingredient.create!(name: Faker::Food.ingredient)
#   )
# end
# puts 'Creating dose...'

# Dose.create(
#   description: '6cl',
#   cocktail: Cocktail.create(name: 'Mojito'),
#   ingredient: Ingredient.create(name: 'lemon')
# )

# Dose.create(
#   description: '9cl',
#   cocktail: Cocktail.create(name: 'Punch'),
#   ingredient: Ingredient.create(name: 'ananas')
# )

# cocktails_attributes = ["Light rum", "Applejack", "Gin", "Dark rum", "Sweet Vermouth", "Strawberry schnapps", "Scotch", "Apricot brandy", "Triple sec", "Southern Comfort", "Orange bitters", "Brandy", "Lemon vodka", "Blended whiskey", "Dry Vermouth", "Amaretto", "Tea", "Champagne", "Coffee liqueur", "Bourbon", "Tequila", "Vodka", "Añejo rum", "Bitters", "Sugar", "Kahlua", "demerara Sugar", "Dubonnet Rouge", "Lime juice", "Irish whiskey", "Apple brandy", "Carbonated water", "Cherry brandy", "Creme de Cacao", "Grenadine", "Port", "Coffee brandy", "Red wine", "Rum", "Grapefruit juice", "Ricard", "Sherry", "Cognac", "Sloe gin", "Apple juice", "Pineapple juice", "Lemon juice", "Sugar syrup", "Milk", "Strawberries", "Chocolate syrup", "Yoghurt", "Mango", "Ginger", "Lime", "Cantaloupe", "Berries", "Grapes", "Kiwi", "Tomato juice", "Cocoa powder", "Chocolate", "Heavy cream", "Galliano", "Peach Vodka", "Ouzo", "Coffee", "Spiced rum", "Water", "Espresso", "Angelica root", "Orange", "Cranberries", "Johnnie Walker", "Apple cider", "Everclear", "Cranberry juice", "Egg yolk", "Egg", "Grape juice", "Peach nectar", "Lemon", "Firewater", "Lemonade", "Lager", "Whiskey", "Absolut Citron", "Pisco", "Irish cream", "Ale", "Chocolate liqueur", "Midori melon liqueur", "Sambuca", "Cider", "Sprite", "7-Up", "Blackberry brandy", "Peppermint schnapps", "Creme de Cassis", "Jack Daniels"]

# cocktails_attributes.each do |ingredient|
#   Cocktail.create!(
#     name: ingredient
#   )
# end



# puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'JSON'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(URI.open(url).read)

if Rails.env.development?
  puts 'Delete Ingredients ...'
  Ingredient.destroy_all
end

puts 'Seeding Ingredients DB ...'
ingredients['drinks'].each_with_index do |ingredient, i|
  Ingredient.create!(name: ingredient['strIngredient1'].capitalize)
  puts "Created #{i + 1} of #{ingredients['drinks'].length} ingredients ..."
end

puts 'Seed done ...'

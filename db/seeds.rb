# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lor

# require 'httparty'
# response = HTTParty.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list', format: :plain)
# ingredients = JSON.parse(response.body)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(
    name: ingredient["strIngredient1"]
  )
end

require 'faker'

40.times do 
  Cocktail.create(
    name: Faker::Science.scientist
  )
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#Ingredient.create(name: "lemon")
require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
html_file = open(url).read
html_doc = JSON.parse(html_file)
html_doc['drinks']

html_doc['drinks'].each do |element|
  Ingredient.create(name: element['strIngredient1'])
end

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

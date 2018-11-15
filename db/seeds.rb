require 'open-uri'

puts "Destroy ingredients"
Ingredient.destroy_all

puts "Destroy Cocktails"
Cocktail.destroy_all

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end


puts "Adding Cocktails"
Cocktail.create(name: "NegronIRI")
Cocktail.create(name: "MargaIRIta")
Cocktail.create(name: "Bloody MaIRI")
Cocktail.create(name: "DaquIRI")
Cocktail.create(name: "CosmopolitanIRI")
Cocktail.create(name: "CaipIRInha")


# p "Adding Ingredients"
# Ingredient.create(name: "whiskey")
# Ingredient.create(name: "fresh lemon juice")
# Ingredient.create(name: "syrup")
# Ingredient.create(name: "crushed ice")

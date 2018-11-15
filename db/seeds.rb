require 'open-uri'

puts "Destroy ingredients"
Ingredient.destroy_all
puts "Adding ingredients"

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

ingredients["drinks"].take(10).each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end


puts "Destroy Cocktails"
Cocktail.destroy_all
puts "Adding Cocktails"
Cocktail.create(name: "NegronIRI")
Cocktail.create(name: "MargaIRIta")
Cocktail.create(name: "Bloody MaIRI")
Cocktail.create(name: "DaquIRI")
Cocktail.create(name: "CosmopolitanIRI")
Cocktail.create(name: "CaipIRInha")



puts "Destroying Doses"
Dose.destroy_all
p "Adding Doses"

Dose.create(description: "1 part", ingredient_id: Ingredient.all.sample, cocktail_id: Cocktail.all.sample)
Dose.create(description: "a drop of", ingredient_id: Ingredient.all.sample, cocktail_id: Cocktail.all.sample)
Dose.create(description: "2 parts", ingredient_id: Ingredient.all.sample, cocktail_id: Cocktail.all.sample)
Dose.create(description: "a splash of", ingredient_id: Ingredient.all.sample, cocktail_id: Cocktail.all.sample)

p "Seeds finished!"

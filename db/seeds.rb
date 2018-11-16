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
Cocktail.create!({name: "Negroniri", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542385554/negroni.jpg")})
Cocktail.create!({name: "Margairita", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310799/wqrevp0tqmbdfeyhszto.jpg")})
Cocktail.create!({name: "Bloody Mairi", photo:  open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310779/lvxwadtlkifbh3vsf4au.jpg")})
Cocktail.create!({name: "Daquiri", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310815/zbw9oe2ymiz10wpa4vnt.jpg")})
Cocktail.create!({name: "Cosmopolitaniri",photo:  open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542203204/irwyf9b3co3t4xh5xoew.jpg")})
Cocktail.create!({name: "Caipirinha", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542214876/bn6yxqe86g6ukvgnal7l.png")})


# Course.create!({ photo: open("res.cloudinary.com/...photo.jpg") )} – Ben Jul 6 at 12:06


puts "Destroying Doses"
Dose.destroy_all


p "Seeds finished!"

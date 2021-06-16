# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 5.times do |i|
  name = "Pet#{i}"
  breed = "Breed#{i}"
  age = i+1 

  Pet.create(name:name, breed:breed, age:age)
end


=begin Pet.create(name:'Kobe', breed:'germany', age:3)
Pet.create(name:'Friday', breed:'ghana', age:5)
Pet.create(name:'Tuka', breed:'mexico', age:3)
Pet.create(name:'Flody', breed:'malaysia', age:6)
Pet.create(name:'Sinclair', breed:'us', age:9)
end
=end
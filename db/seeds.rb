# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Dog.destroy_all
DogSitter.destroy_all
City.destroy_all
Stroll.destroy_all
Join.destroy_all

5.times do
   City.create!(
     city_name: Faker::Address.city
   ) 
end

10.times do 
   Dog.create!(
     name: Faker::Games::Pokemon.name,
     city: City.all.sample
     )
end

5.times do 
   DogSitter.create!(
     name: Faker::Name.name, 
     city: City.all.sample 
  )
end


20.times do |x|
      Stroll.create(
         dog_sitter: DogSitter.all.sample, 
         name: "promenade#{x}"
      )
   end

2.times do 
      Stroll.all.each do |st|
         Join.create!(
            dog: Dog.all.sample,
            dog_sitter: st.dog_sitter,
            stroll: st
         )
      end
   end   

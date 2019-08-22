# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  # Faker Gem
  dep = Department.create(
    name: Faker::Commerce.department
    )
  5.times do
    dep.items.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    color: Faker::Color.color_name,
    description: Faker::String.random,
    available: Faker::Boolean.boolean
    )
  end
end
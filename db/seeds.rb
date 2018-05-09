# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0032 472 41 88 23',
    category:     'chinese'
    reviews_attributes: [
      {content: "Super bouffe, super chef!", rating: 5},
      {content: "Bonne bouffe", rating: 4},
    ]
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0033 475 40 80 23',
    category:     'italian'
    reviews_attributes: [
      {content: "Super bouffe, super chef!", rating: 5},
      {content: "Bonne bouffe", rating: 4},
    ]
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

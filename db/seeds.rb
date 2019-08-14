# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Nuking database...'
Restaurant.destroy_all

puts 'Creating restaurants out of thin air..'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '123456789',
    category:  'chinese'
  },
  {
    name:         'PizzaEast',
    address:      'Compton Road, London E3 GPD',
    phone_number: '123456789',
    category:  'italian'
  },
  {
    name:         'McDonalds',
    address:      'Death Row, London S3 9KK',
    phone_number: '123456789',
    category:  'japanese'
  },
  {
    name:         'PainDaily',
    address:      'French Street, London E3 B98',
    phone_number: '123456789',
    category:  'french'
  },
  {
    name:         'PainDaily',
    address:      'French Street, London E3 B98',
    phone_number: '123456789',
    category:  'french'
  }
]
restaurants_attributes.each do |x|
  r = Restaurant.create(x)
  Review.create(content: "good food", rating: 4, restaurant: r )
end
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unless User.any?

  user = User.create(name: 'Bob',
                     email: 'bob@example.com')
  wishlist = user.wishlists.create(name: 'My Wishlist')
  wishlist.wishes.create([{name: 'Bike', description: 'Any modern bike'},
                          {name: 'Nintendo Switch'}])
  user.save
  
end

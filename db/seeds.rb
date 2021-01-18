# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database now...'
Listing.destroy_all
User.destroy_all
puts 'Database clean ✅'

# Users:

owner_array = []

user = User.new
user.email = 'admin@gmail.com' # admin user
user.password = '123456'
user.save!

user_rentee = User.new
user_rentee.email = 'joe@gmail.com' # user_rentee to rent a truck
user_rentee.password = '123456'
user_rentee.save!

user_owner = User.new
user_owner.email = 'anne.owner@gmail.com' # user_owner1 to offer trucks
user_owner.password = '123456'
user_owner.save!

user_owner2 = User.new
user_owner2.email = 'anne.other.owner@gmail.com'
user_owner2.password = '123456'
user_owner2.save!

# Listings:
listing_array = []

listing = Listing.new
listing.title = 'bluza'
listing.category = 'Блуза'
listing.price = '1000'
listing.size = 'S'
listing.description = 'bluza'

listing.user = user_owner
listing.save
listing_array << listing


puts "Done!"
puts "Created #{User.count} users."
puts "Created #{Listing.count} listings."




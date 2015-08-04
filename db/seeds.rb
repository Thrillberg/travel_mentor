# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

istanbul = City.create!(name: "Istanbul")
vienna = City.create!(name: "Vienna")
paris = City.create!(name: "Paris")
new_york = City.create!(name: "New York")
beijing = City.create!(name: "Beijing")
tehran = City.create!(name: "Tehran")
los_angeles = City.create!(name: "Los Angeles")

running = Interest.create!(name: "Running")
swimming = Interest.create!(name: "Swimming")
meuseums = Interest.create!(name: "Museums")
libraries = Interest.create!(name: "Libraries")
skydiving = Interest.create!(name: "Skydiving")
games = Interest.create!(name: "Games")
walking = Interest.create(name: "Walking")

User.create!(first_name: "Eric", last_name: "Tillberg", email: "eric@example.com", password: "password", admin: true)
User.create!(first_name: "Peter", last_name: "Peterson", email: "peter@example.com", password: "password")
User.create!(first_name: "Jonathan", last_name: "Jonnersons", email: "jonathan@example.com", password: "password")
User.create!(first_name: "Joseph", last_name: "Josephson", email: "joseph@example.com", password: "password")
User.create!(first_name: "Alice", last_name: "Alicedottir", email: "alice@example.com", password: "password")
User.create!(first_name: "Cindy", last_name: "Cindydottir", email: "cindy@example.com", password: "password")

UserInterest.create!(interest_id: 1, user_id: 1)
UserInterest.create!(interest_id: 4, user_id: 2)
UserInterest.create!(interest_id: 2, user_id: 3)
UserInterest.create!(interest_id: 2, user_id: 1)
UserInterest.create!(interest_id: 3, user_id: 1)

UserCity.create!(city_id: 1, user_id: 1)
UserCity.create!(city_id: 4, user_id: 2)
UserCity.create!(city_id: 2, user_id: 3)
UserCity.create!(city_id: 1, user_id: 3)
UserCity.create!(city_id: 5, user_id: 3)

Relationship.create!(leader_id: 1, follower_id: 2)
Relationship.create!(leader_id: 2, follower_id: 1)
Relationship.create!(leader_id: 1, follower_id: 3)
Relationship.create!(leader_id: 3, follower_id: 1)
Relationship.create!(leader_id: 2, follower_id: 3)
Relationship.create!(leader_id: 3, follower_id: 2)

Message.create!(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pretium ipsum ut orci fringilla tincidunt. Etiam id nisi sed nulla vehicula luctus. Nam nec fermentum turpis, at bibendum augue. Donec commodo est mi, nec iaculis metus viverra et. Praesent erat enim, rutrum quis nisl vitae, congue interdum arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus viverra, augue ut commodo pulvinar, ipsum purus aliquet magna, nec rhoncus ipsum libero eu augue. Suspendisse iaculis mauris ut lectus pellentesque, quis commodo magna tristique. Nulla euismod lectus eget posuere laoreet. Nunc pulvinar eu tortor ut posuere. Quisque nec arcu a urna convallis sagittis. Donec eget iaculis arcu. Integer ultrices massa vitae tortor malesuada sagittis quis vitae orci. Sed imperdiet urna vel mattis consectetur. Quisque sollicitudin mauris at est tempor, vestibulum viverra urna convallis.", conversation_id: 1, author_id: 1, reader_id: 2)

Message.create!(body: "Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam auctor fermentum dolor, sit amet aliquam dolor tincidunt ut. In in lorem ultrices, tristique lacus eu, fringilla velit. Vestibulum aliquam magna et finibus feugiat. Pellentesque placerat urna erat, eget consequat tellus porttitor vitae. Ut rhoncus leo a nisl tempus, sed iaculis eros scelerisque. Maecenas eget lorem porta, dapibus orci sit amet, feugiat purus. Fusce lacinia orci pretium quam porttitor commodo. Sed porta egestas tellus, a", conversation_id: 1, author_id: 1, reader_id: 2)

Message.create!(body: "erat, eget consequat tellus porttitor vitae. Ut rhoncus leo a nisl tempus, sed iaculis eros scelerisque. Maecenas eget lorem porta, dapibus orci sit amet, feugiat purus. Fusce lacinia orci pretium quam porttitor commodo. Sed porta egestas tellus, a", conversation_id: 1, author_id: 2, reader_id: 1)

Message.create!(body: "This is great! Apibus orci sit amet, feugiat purus. Fusce lacinia orci pretium quam porttitor commodo. Sed porta egestas tellus, a", conversation_id: 2, author_id: 1, reader_id: 3)

Message.create!(body: "MONEYMONEYMONEY", conversation_id: 3, author_id: 2, reader_id: 3)

Message.create!(body: "Thiinterruptingstarfish! a", conversation_id: 3, author_id: 3, reader_id: 2)

Message.create!(body: "All eyes descend on one.", conversation_id: 3, author_id: 2, reader_id: 3)

Message.create!(body: "More nonsense.", conversation_id: 4, author_id: 6, reader_id: 5)

Message.create!(body: "You don't say!", conversation_id: 4, author_id: 5, reader_id: 6)

Message.create!(body: "But I DO say!", conversation_id: 4, author_id: 6, reader_id: 5)

Message.create!(body: "I find this whole thing very hard to believe. You must take me for a fool.", conversation_id: 4, author_id: 5, reader_id: 6)
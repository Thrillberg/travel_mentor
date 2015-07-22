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

User.create!(first_name: "Eric", last_name: "Tillberg", email: "eric@example.com", password: "password")
User.create!(first_name: "Peter", last_name: "Peterson", email: "peter@example.com", password: "password")
User.create!(first_name: "Mary", last_name: "McMarysons", email: "mary@example.com", password: "password")
25.times { Fabricate(:user) }

Conversation.create!(sender_id: 1, recipient_id: 2)
Conversation.create!(sender_id: 2, recipient_id: 1)
Conversation.create!(sender_id: 3, recipient_id: 1)
Conversation.create!(sender_id: 1, recipient_id: 4)
Conversation.create!(sender_id: 5, recipient_id: 1)
Conversation.create!(sender_id: 1, recipient_id: 6)
Conversation.create!(sender_id: 5, recipient_id: 2)

Message.create!(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pretium ipsum ut orci fringilla tincidunt. Etiam id nisi sed nulla vehicula luctus. Nam nec fermentum turpis, at bibendum augue. Donec commodo est mi, nec iaculis metus viverra et. Praesent erat enim, rutrum quis nisl vitae, congue interdum arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus viverra, augue ut commodo pulvinar, ipsum purus aliquet magna, nec rhoncus ipsum libero eu augue. Suspendisse iaculis mauris ut lectus pellentesque, quis commodo magna tristique. Nulla euismod lectus eget posuere laoreet. Nunc pulvinar eu tortor ut posuere. Quisque nec arcu a urna convallis sagittis. Donec eget iaculis arcu. Integer ultrices massa vitae tortor malesuada sagittis quis vitae orci. Sed imperdiet urna vel mattis consectetur. Quisque sollicitudin mauris at est tempor, vestibulum viverra urna convallis.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ullamcorper at libero sit amet interdum. Fusce lacinia mattis porttitor. Proin suscipit vulputate urna, at rhoncus leo pretium nec. Ut non eros augue. Duis enim ligula, tincidunt at elementum sit amet, euismod non mi. Ut sollicitudin nisl lacinia, maximus ante in, mollis sem. Duis efficitur imperdiet ultrices. Cras fermentum eget velit at venenatis. Nunc mi lacus, molestie vitae massa ut, accumsan pharetra nibh. Curabitur volutpat est nisl, sed dapibus mi gravida ut. Aliquam erat volutpat. Cras non eros sodales, porttitor velit eu, facilisis metus. Donec commodo ex nisl, at rhoncus dui suscipit ac. In ac felis enim.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam auctor fermentum dolor, sit amet aliquam dolor tincidunt ut. In in lorem ultrices, tristique lacus eu, fringilla velit. Vestibulum aliquam magna et finibus feugiat. Pellentesque placerat urna erat, eget consequat tellus porttitor vitae. Ut rhoncus leo a nisl tempus, sed iaculis eros scelerisque. Maecenas eget lorem porta, dapibus orci sit amet, feugiat purus. Fusce lacinia orci pretium quam porttitor commodo. Sed porta egestas tellus, ac accumsan lorem pellentesque eu. Vestibulum ut mi sit amet est mollis posuere. Integer mollis arcu eget enim semper pellentesque. Nam pharetra feugiat tellus, nec scelerisque orci dignissim ut. Duis quis tempor metus. Suspendisse et velit sed ipsum tempor volutpat sit amet at lorem. In dapibus facilisis lorem at sollicitudin. Curabitur porta arcu ex, eget mollis velit efficitur ac.

Maecenas bibendum bibendum dui rutrum facilisis. Etiam molestie ut leo sagittis congue. Proin risus sem, pharetra sed felis vitae, fringilla convallis lectus. Duis tincidunt ligula nec diam scelerisque tincidunt. Vestibulum erat tortor, iaculis sit amet hendrerit non, luctus id turpis. Cras euismod nibh vel gravida aliquet. Aliquam et ultrices erat. Sed aliquam gravida ultricies. Mauris suscipit, velit id feugiat placerat, risus tortor consequat dui, ut rhoncus ex orci non libero. Integer tellus felis, feugiat a orci luctus, molestie egestas risus. Donec efficitur efficitur nunc, a rutrum dui mollis at. Mauris ex augue, iaculis vitae leo in, ornare congue augue. Aenean sagittis, risus vitae dictum sagittis, magna nisl efficitur orci, ut ultricies dui velit id dolor. Nullam pellentesque ut nulla ut finibus. Nunc luctus, tellus vel viverra sollicitudin, arcu purus venenatis ipsum, in pellentesque turpis ante sit amet diam. Quisque in justo eros.

Donec ac leo et sem bibendum tincidunt. Vivamus tristique sed ligula tincidunt venenatis. Suspendisse aliquet lectus commodo urna semper fermentum. Pellentesque lobortis, urna aliquam mattis tristique, diam sem sollicitudin nisi, sit amet gravida sem risus et orci. Praesent lobortis finibus sem, sit amet ultricies erat varius a. Ut mattis mollis arcu, nec lacinia nisl faucibus in. Fusce quis efficitur ipsum, in pellentesque neque. Ut libero justo, sagittis eu risus rutrum, efficitur tincidunt nunc. Nam ac erat ac mi vehicula vehicula quis ut urna. Nam id venenatis arcu. Nullam pellentesque urna sit amet commodo commodo.", conversation_id: 1, author_id: 1, reader_id: 2)

Message.create!(body: "Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam auctor fermentum dolor, sit amet aliquam dolor tincidunt ut. In in lorem ultrices, tristique lacus eu, fringilla velit. Vestibulum aliquam magna et finibus feugiat. Pellentesque placerat urna erat, eget consequat tellus porttitor vitae. Ut rhoncus leo a nisl tempus, sed iaculis eros scelerisque. Maecenas eget lorem porta, dapibus orci sit amet, feugiat purus. Fusce lacinia orci pretium quam porttitor commodo. Sed porta egestas tellus, a", conversation_id: 1, author_id: 2, reader_id: 1)

Message.create!(body: "erit non, luctus id turpis. Cras euismod nibh vel gravida aliquet. Aliquam et ultrices erat. Sed aliquam gravida ultricies. Mauris suscipit, velit id feugiat placerat, risus tortor consequat dui, ut rhoncus ex orci non libero. Integer tellus felis, feugiat a orci luctus, molestie egestas risus. Donec efficitur efficitur nunc, a rutrum dui mollis at. Mauris ex augue, iaculis vitae leo in, ornare congue augue. Aenean sagittis, risus vitae dictum sagittis, magna nisl efficitur orci, ut ultricies dui velit id dolor. Nullam pellentesque ut nulla ut finibus. Nunc luctus, tellus vel viverra sollicitudin, a", conversation_id: 3, author_id: 3, reader_id: 2)

Message.create!(body: "erit non, luctus id turpis. Cras euismod nibh vel gravida aliquet. Aliquam et ultrices erat. Sed aliquam gravida ultricies. Mauris suscipit, velit id feugiat placerat, risus tortor consequat dui, ut rhoncus ex orci non libero. Integer tellus felis, feugiat a orci luctus, molestie egestas risus. Donec efficitur efficitur nunc, a rutrum dui mollis at. Mauris ex augue, iaculis vitae leo in, ornare congue augue. Aenean sagittis, risus vitae dictum sagittis, magna nisl efficitur orci, ut ultricies dui velit id dolor. Nullam pellentesque ut nulla ut finibus. Nunc luctus, tellus vel viverra sollicitudin, a", conversation_id: 4, author_id: 3, reader_id: 1)

Message.create!(body: "erit non, luctus id turpis. Cras euismod nibh vel gravida aliquet. Aliquam et ultrices erat. Sed aliquam gravida ultricies. Mauris suscipit, velit id feugiat placerat, risus tortor consequat dui, ut rhoncus ex orci non libero. Integer tellus felis, feugiat a orci luctus, molestie egestas risus. Donec efficitur efficitur nunc, a rutrum dui mollis at. Mauris ex augue, iaculis vitae leo in, ornare congue augue. Aenean sagittis, risus vitae dictum sagittis, magna nisl efficitur orci, ut ultricies dui velit id dolor. Nullam pellentesque ut nulla ut finibus. Nunc luctus, tellus vel viverra sollicitudin, a", conversation_id: 5, author_id: 2, reader_id: 1)

Message.create!(body: "erit non, luctus id turpis. Cras euismod nibh vel gravida aliquet. Aliquam et ultrices erat. Sed aliquam gravida ultricies. Mauris suscipit, velit id feugiat placerat, risus tortor consequat dui, ut rhoncus ex orci non libero. Integer tellus felis, feugiat a orci luctus, molestie egestas risus. Donec efficitur efficitur nunc, a rutrum dui mollis at. Mauris ex augue, iaculis vitae leo in, ornare congue augue. Aenean sagittis, risus vitae dictum sagittis, magna nisl efficitur orci, ut ultricies dui velit id dolor. Nullam pellentesque ut nulla ut finibus. Nunc luctus, tellus vel viverra sollicitudin, a", conversation_id: 6, author_id: 5, reader_id: 1)
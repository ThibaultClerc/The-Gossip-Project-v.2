# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'activerecord-reset-pk-sequence'

# users = User.all
# users.delete_all
# users.reset_pk_sequence

# city = City.all
# city.delete_all
# city.reset_pk_sequence

# gossip = Gossip.all
# gossip.delete_all
# gossip.reset_pk_sequence

# tags = Tag.all
# tags.delete_all
# tags.reset_pk_sequence

# gossip_tags = GossipTag.all
# gossip_tags.delete_all
# gossip_tags.reset_pk_sequence

 10.times do
   cities = City.create!(
     city_name: Faker::Address.city,
     zip_code: Faker::Address.zip_code
   )
 end

 puts "#{City.all.count} villes créées"

10.times do
  users = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    description: Faker::Quote.unique.famous_last_words,
    city_id: rand(1..10),
    age: rand(15..40),
    password: "azerty"
  )
end

puts "#{User.all.count} users créés"

20.times do
  gossips = Gossip.create!(
    title: Faker::Book.title,
    content: Faker::GreekPhilosophers.quote,
    user_id: rand(1..10)
  )
end

puts "#{Gossip.all.count} gossips créés"

# 10.times do
#   tags = Tag.create!(
#     tag: "#" + Faker::Superhero.unique.descriptor
#   )
# end

# puts "#{Tag.all.count} tags créés"

# 30.times do
#   gossip_tags = GossipTag.create!(
#     tag_id: rand(1..10),
#     gossip_id: rand(1..20)
#   ) 
# end

# puts "#{GossipTag.all.count} valeurs de table de jonctions Gossip/Tag créées"

# 15.times do
#   private_messages =PrivateMessage.create!(
#     sender_id: rand(1..10),
#     recipient_id: rand(1..10),
#     content: Faker::ChuckNorris.fact
#   )
# end


# 15.times do
#   private_messages =PrivateMessage.create!(
#     sender_id: rand(1..10),
#     recipient_id: rand(1..10),
#     content: Faker::ChuckNorris.fact
#   )
# end

# puts "#{PrivateMessage.all.count} messages privés créés"

# User.create!(
#   first_name: "Anonymous",
#   last_name: "Clerc",
#   email: "anonymous@gmail.com",
#   description: Faker::Quote.unique.famous_last_words,
#   city_id: rand(1..10),
#   age: rand(15..40),
#   password: "azerty"
# )

# puts "Anonymous user with 11 id created"

50.times do
  Comment.create!(
    content: Faker::ChuckNorris.fact,
    gossip_id: rand(1..20),
    author_id: rand(1..10)
  )
end

puts "#{Comment.count} commentaires créés"

40.times do
  Like.create!(
    gossip_id: rand(1..20),
    liker_id: rand(1..User.all.count)
  )
end

puts "#{Like.all.count} likes créés"

puts "Seed done!"
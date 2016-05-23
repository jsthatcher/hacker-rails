# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  User.create(
    full_name: Faker::Superhero.name,
    email: Faker::Internet.free_email,
    hashed_password: 'password'
    )
end


20.times do
  Post.create(
    title: Faker::Hacker.noun,
    content: Faker::Hacker.say_something_smart,
    user_id: rand(1..6)
    )
end

100.times do
  Comment.create(
    description: Faker::Hacker.say_something_smart,
    user_id: rand(1..6),
    post_id: rand(1..20)
    )
end

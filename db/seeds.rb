# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |n|
    email = Faker::Internet.email
    name = Faker::Name.name
    password = "password"
    User.create(email: email,
                password: password,
                password_confirmation: password,
                name: name,
                uid: SecureRandom.uuid
                )
end

n = 1
    while n <= 5
        Topic.create(
            title: Faker::Lorem.sentence,
            content: Faker::Lorem.sentence,
            user_id: n
        )
        Comment.create(
          content: Faker::Lorem.sentence,
          user_id: n,
          topic_id: 1
        )
        n = n + 1
    end

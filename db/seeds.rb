# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    Posting.create({
        title: Faker::Military.air_force_rank,
        body: Faker::Game.genre
    })
end
5.times do 
    Article.create({
        title: Faker::Food.dish,
        body: Faker::Food.description
    })
end
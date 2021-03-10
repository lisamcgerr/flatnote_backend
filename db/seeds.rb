# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Goal.destroy_all

5.times do
    User.create(
        username: Faker::Name.unique.name.parameterize.underscore,
        # password: '123',
        full_name: Faker::Name.unique.name,
        image_url: "https://freeiconshop.com/wp-content/uploads/edd/person-outline.png"
    )
end

goals = ['Family', 'Financial', 'Health and Well Being', 'Self Development', 'Spiritual', 'Social', 'Work and Career', 'Other']
descriptions = ['desc 1', 'desc 2', 'desc 3', 'desc 4', 'desc 5', 'desc 6', 'desc 7', 'desc 8', 'desc 9', 'desc 10', 'desc 11', 'desc 12', 'desc 13']
user_id = User.all.map { |user| user.id }

10.times do 
    Goal.create(
        category: goals.sample,
        description: descriptions.sample,
        completion_date: Faker::Date.forward(days: 30),
        user_id: user_id.sample
    )
end

# entries = ['entry 1', 'entry 2', 'entry 3', 'entry 4', 'entry 5', 'entry 6', 'entry 7', 'entry 8', 'entry 9', 'entry 10', 'entry 11', 'entry 12', 'entry 13']
# goal_id = Goal.all.map { |goal| goal.id }

# 30.times do
#     Note.create(
#         date: Faker::Date.forward(days: 7),
#         entry: entries.sample,
#         goal_id: goal_id.sample
#     )
# end





puts "After successfully seeding: "
puts "#{User.all.count} users"
puts "#{Goal.all.count} goals"
# puts "#{Note.all.count} notes"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do |i|
  f = Feed.create(content: Faker::Lorem.sentence, user_id: 1)
end

20.times do |i|
  5.times do  
    f = Comment.create(comment: Faker::Lorem.sentence, feed_id: i)
  end
end
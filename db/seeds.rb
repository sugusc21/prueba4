# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Work.destroy_all

2.times do |i|
	User.create(name: "User #{i}", email: "user#{i}@gmail.com")
end

3.times do |j|
	Work.create(name: "trabajo #{j}", user_id: 9)
end
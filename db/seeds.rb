# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
	User.create({name: "user#{i}", email: "test#{i}@example.com", password: "password"})
end

5.times do |i|
	3.times do |j|
		Todo.create({title: "title#{j}", body: "body#{j}", user_id: i})
	end
end

5.times do |i|
	Tag.create({name: "tag#{i}"})
end

5.times do |i|
	3.times do |j|
		TodoTag.create({todo_id: i*j, tag_id: i})
	end
end
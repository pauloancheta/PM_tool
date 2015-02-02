# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Science", "Technology", "Art", "Music", "Movie"].each do |cat|
  Category.create(name: cat)
end

["Food", "App", "Travel", "Rails", "HTML"].each do |cat|
  Tag.create(name: cat)
end

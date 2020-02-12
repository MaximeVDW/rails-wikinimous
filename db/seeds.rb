# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Starting the seed program'
puts 'Detroy existing articles'

Article.destroy_all

puts 'Creating fake articles'

10.times do
  article = Article.new(title: Faker::Nation.language, content: Faker::ChuckNorris.fact)
  article.save!
end

puts 'Articles added to the database'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times do
Course.create!(
name: "ruby on rails",
number_of_lessons: 58,
lesson_completed: 0,
hours_needed: 400,
hours_spend: 0
)
end

1.times do
Course.create!(
name: "javascript",
number_of_lessons:82,
lesson_completed: 20,
hours_needed: 800,
hours_spend: 20
)
end

2.times do
Course.create!(
name: "php",
number_of_lessons:100,
lesson_completed: 20,
hours_needed: 500,
hours_spend: 10
)
end

1.times do
Course.create!(
name: "React",
number_of_lessons:100,
lesson_completed: 20,
hours_needed: 500,
hours_spend: 10
)
end

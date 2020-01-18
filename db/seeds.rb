# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
topic_1 = Topic.create(title: "topic_1")
topic_2 = Topic.create(title: "topic_2")

5.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sample Body",
    topic: topic_1,
  )
end

5.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sample Body",
    topic: topic_2,
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    precent_utilized: 15,
  )
end

puts "5 skills created"

8.times do |protfolio|
  Protfolio.create!(
    title: "Protfolio #{protfolio}",
    subtitle: "Ruby on Rails",
    body: "somthing somthing somethign",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

1.times do |protfolio|
  Protfolio.create!(
    title: "Protfolio #{protfolio}",
    subtitle: "Angular",
    body: "somthing somthing somethign",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

puts "9 protfolio created"

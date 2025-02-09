require 'faker'

10.times do |_|
  content = Faker::Lorem.paragraphs(number: rand(10))
  article = Article.new(title: Faker::Book.title, content: content.join(" "))
  article.save
end

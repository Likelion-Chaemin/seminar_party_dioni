# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
Place.create(name: "연회장", img_url: "http://cfile210.uf.daum.net/image/162698284CFD93E6175977")
Place.create(name: "호수공원", img_url: "http://www.munhwanews.com/news/photo/201608/20702_43001_1422.jpg")
Place.create(name: "뒤뜰", img_url: "http://www.acropolistimes.com/news/photo/201003/859_2140_5734.jpg")

for i in 1..100
  Member.create(name: Faker::Name.first_name, fun: rand(0..10)-5, place_id: rand(1..3))
end

for i in 1..100
  Visitor.create(name: Faker::Name.first_name, fun: rand(0..10)-5)
end

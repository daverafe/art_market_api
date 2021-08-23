# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_admin = User.create(email: "dave@123.com", password: "123")

art_post_1 = ArtPost.create(title: "ArtPost1", price: 50, description: "Beautiful", user_id: 1)
art_post_2 = ArtPost.create(title: "ArtPost2", price: 75, description: "Beautiful", user_id: 1)
art_post_3 = ArtPost.create(title: "ArtPost3", price: 100, description: "Beautiful", user_id: 1)

art_post_1.image.attach(
    io: File.open('./public/images/mr-tt-xb0wLfZH9Zo-unsplash.jpg'),
    filename: 'mr-tt-xb0wLfZH9Zo-unsplash.jpg',
    content_type: 'application/jpg'
)


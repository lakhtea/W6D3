# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Alisa_Cheadle")
User.create(username: "Lakhte_Agha")
User.create(username: "Sally")
User.create(username: "Bob")
User.create(username: "Susan")

Artwork.create(title: "Mona_Lisa", img_url: "monalisa.com", artist_id: 1)
Artwork.create(title: "Starry_Night", img_url: "starrynight.com", artist_id: 2)
Artwork.create(title: "Scream", img_url: "scream.com", artist_id: 3)
Artwork.create(title: "Girl_Before_Mirror", img_url: "girlbeforemirror.com", artist_id: 4)
Artwork.create(title: "The_Swing", img_url: "theswing.com", artist_id: 5)

ArtworkShare.create(artwork_id: 1, viewer_id: 2)
ArtworkShare.create(artwork_id: 2, viewer_id: 1)
ArtworkShare.create(artwork_id: 3, viewer_id: 5)
ArtworkShare.create(artwork_id: 4, viewer_id: 2)
ArtworkShare.create(artwork_id: 5, viewer_id: 1)

Comment.create(commenter_id: 1, artwork_id: 2, body: "Nice painting")
Comment.create(commenter_id: 2, artwork_id: 4, body: "Nice drawing")
Comment.create(commenter_id: 3, artwork_id: 5, body: "beautiful")
Comment.create(commenter_id: 5, artwork_id: 1, body: "Gorgeous")
Comment.create(commenter_id: 4, artwork_id: 1, body: "Life changing")




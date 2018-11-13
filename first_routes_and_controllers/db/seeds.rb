# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user1 = User.create(username: "Peter")
user2 = User.create(username: "Skylar")
user3 = User.create(username: "Santa Claus")
user4 = User.create(username: "John Bob")

work1 = Artwork.create(title: "Peter's Artwork", image_url: "bogus_url", artist_id: user1.id)
work2 = Artwork.create(title: "Skylar's Artwork", image_url: "fake_url", artist_id: 2)
work3 = Artwork.create(title: "Santa's Baller Artwork", image_url: "not_real_url", artist_id: user3.id)
work4 = Artwork.create(title: "Masterpiece", image_url: "phony_url", artist_id: 4)

share1 = ArtworkShare.create(artwork_id: work4.id, viewer_id: 1)
share2 = ArtworkShare.create(artwork_id: work4.id, viewer_id: 2)
share3 = ArtworkShare.create(artwork_id: work4.id, viewer_id: 3)
share4 = ArtworkShare.create(artwork_id: work4.id, viewer_id: 4)
share5 = ArtworkShare.create(artwork_id: work3.id, viewer_id: 1)
share6 = ArtworkShare.create(artwork_id: work3.id, viewer_id: 2)
share7 = ArtworkShare.create(artwork_id: work1.id, viewer_id: 2)
share8 = ArtworkShare.create(artwork_id: work2.id, viewer_id: 1)

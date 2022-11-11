# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

vivian = User.create(username: 'vivian')
kaushal = User.create(username: 'kzk')
taylor = User.create(username: 'taylorson')

yellow_tulip = Artwork.create(title: 'Yellow Tulips', image_url: 'https://www.pexels.com/photo/yellow-tulips-in-bloom-13414727/', artist_id: vivian.id )

horse = Artwork.create(title: 'Horses', image_url: 'https://www.pexels.com/photo/horses-on-water-13664663/', artist_id: kaushal.id )

yoga = Artwork.create(title: 'Yoga', image_url: 'https://www.pexels.com/photo/silhouette-of-man-at-daytime-1051838/', artist_id: taylor.id )

landscapes = Artwork.create(title: 'Landscapes', image_url: 'https://www.pexels.com/photo/beautiful-view-of-moraine-lake-2662116/', artist_id: vivian.id )

beach = Artwork.create(title: 'Beach', image_url: 'https://www.pexels.com/photo/landscape-photography-of-trees-on-shoreline-457882/', artist_id: kaushal.id ) 


chrismas = Artwork.create(title: 'Christmas', image_url: 'https://www.pexels.com/photo/red-volkswagen-beetle-scale-model-3444345/', artist_id: taylor.id )

Comment.create(author_id: taylor.id, artwork_id: yellow_tulip.id, body: "ewrtyjki")
Comment.create(author_id: vivian.id, artwork_id: landscapes.id, body: "werty")
Comment.create(author_id: kaushal.id, artwork_id: yoga.id, body: "cvbvbn")
Comment.create(author_id: vivian.id, artwork_id: beach.id, body: "wedfgb")
Comment.create(author_id: kaushal.id, artwork_id: chrismas.id, body: "oijhgfvc")


ArtworkShare.create(artwork_id: yellow_tulip.id, viewer_id: taylor.id)
ArtworkShare.create(artwork_id:landscapes.id, viewer_id: vivian.id)
ArtworkShare.create(artwork_id: chrismas.id, viewer_id: kaushal.id)
ArtworkShare.create(artwork_id: yoga.id, viewer_id: taylor.id)
ArtworkShare.create(artwork_id: horse.id, viewer_id: kaushal.id)
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

Artwork.create(title: 'Yellow Tulips', image_url: 'https://www.pexels.com/photo/yellow-tulips-in-bloom-13414727/', artist_id: vivian.id )
Artwork.create(title: 'Horses', image_url: 'https://www.pexels.com/photo/horses-on-water-13664663/', artist_id: kaushal.id )
Artwork.create(title: 'Yoga', image_url: 'https://www.pexels.com/photo/silhouette-of-man-at-daytime-1051838/', artist_id: taylor.id )
Artwork.create(title: 'Landscapes', image_url: 'https://www.pexels.com/photo/beautiful-view-of-moraine-lake-2662116/', artist_id: vivian.id )
Artwork.create(title: 'Beach', image_url: 'https://www.pexels.com/photo/landscape-photography-of-trees-on-shoreline-457882/', artist_id: kaushal.id ) 
Artwork.create(title: 'Christmas', image_url: 'https://www.pexels.com/photo/red-volkswagen-beetle-scale-model-3444345/', artist_id: taylor.id )

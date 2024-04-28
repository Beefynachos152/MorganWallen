# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

album1 = Album.create(name: 'If I Know Me', artist: 'Morgan Wallen', release_date: "2018-04-27")
album2 = Album.create(name: "Dangerous: The Double Album", artist: "Morgan Wallen", release_date: "2021-01-08")
album3 = Album.create(name: "Stand Alone", artist: "Morgan Wallen", release_date: "2015-06-01")
album4 = Album.create(name: "The Voice", artist: "Morgan Wallen", release_date: "2014-10-07")

Song.create(title: 'Up Down', duration: 185, album: album1)
Song.create(title: 'Whiskey Glasses', duration: 221, album: album1)
Song.create(title: 'Chasin\' You', duration: 193, album: album1)

Song.create(title: 'Sand in My Boots', duration: 235, album: album2)
Song.create(title: '7 Summers', duration: 234, album: album2)
Song.create(title: 'More Than My Hometown', duration: 204, album: album2)
Song.create(title: 'Somebody\'s Problem', duration: 184, album: album2)

Song.create(title: "Spin You Around", duration: 170, album: album3)

Song.create(title: "Collide", duration: 190, album: album4)

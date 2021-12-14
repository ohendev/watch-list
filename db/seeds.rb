# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

wonderWoman = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
shawshankRedemption = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
titanic = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
ocean8 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
pulpFiction =  Movie.create(title: "Pulp Fiction", overview: "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. ", poster_url: "https://www.themoviedb.org/t/p/w1280/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg", rating: 8.5 )
residentEvil = Movie.create(title: "Resident Evil", overview: "Once the booming home of pharmaceutical giant Umbrella Corporation, Raccoon City is now a dying Midwestern town.", poster_url: "https://www.themoviedb.org/t/p/w1280/sR3iV0Jt080jgvPBtJhs3Tta1y9.jpg", rating: 5.8)

myFirstList = List.new(name: 'Drama')
titanicFirstListBookmark = Bookmark.create(comment: 'Titanic film de la décennie', list: myFirstList, movie: titanic)
shawshankFirstListBookmark = Bookmark.create(comment: 'film au nom imprononçable', list: myFirstList, movie: shawshankRedemption)
myFirstList.save!

actionList = List.new(name: 'Action')
oceanActionBookmark = Bookmark.create(comment: "un bon film d'action", list: actionList, movie: ocean8)
wonderActionBookmark = Bookmark.create(comment: "un film de super heros", list: actionList, movie: wonderWoman)
actionList.save!

horrorList = List.new(name: 'Horror')
residentHorrorBookmark = Bookmark.create(comment: "un vrai cauchemar", list: horrorList, movie: residentEvil)
horrorList.save!

tarantinoList = List.new(name: 'Tarantino')
pulpTarantinoBookmark = Bookmark.create(comment: "un chef d'oeuvre du maître", list: tarantinoList, movie: pulpFiction)
tarantinoList.save!
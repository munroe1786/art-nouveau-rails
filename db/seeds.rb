# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist = Artist.create(name: "Alphonse Mucha", date_of_birth: "July 24, 1860", date_of_death: "July 14, 1939", years_active: "1868-1938", nationality: "Czech")

work = Work.create(artist_id: 1, title: "Zodiac", image_url: "https://www.alphonsemucha.org/Zodiac%20Alphonse%20Mucha.jpg", date: 1896, media: "Lithography", description: "'Zodiac' was Mucha's first work under his contract with the printer Champenois and was originally designed as an in-house calendar for the company. In this composition, Mucha incorporated twelve zodiac signs in the halo-like disk behind the woman's head, one of Mucha's customary motifs. The majestic beauty of the woman is emphasised by her regal bearing and elaborate jewellery.")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Category.create(name: 'Terror')
c2 = Category.create(name: 'Suspenso')
c3 = Category.create(name: 'Aventura')
c4 = Category.create(name: 'Romance')
c5 = Category.create(name: 'Drama')

Movie.create(name: 'viernes 13', category_id: c1.id,  recommend: true)
Movie.create(name: 'Terror en la calle del infierno', category_id: c1.id,  recommend: false)
Movie.create(name: 'Saw', category_id: c2.id,  recommend: true)
Movie.create(name: 'Tom raider', category_id: c3.id,  recommend: false)
Movie.create(name: 'Diario de una pasion', category_id: c1.id,  recommend: true)
Movie.create(name: 'Her', category_id: c1.id,  recommend: false)
Movie.create(name: 'Gulty Romance', category_id: c2.id,  recommend: true)
Movie.create(name: 'Resident Evil', category_id: c1.id,  recommend: false)
Movie.create(name: 'El aro', category_id: c4.id,  recommend: true)
Movie.create(name: 'Un par de locos', category_id: c5.id,  recommend: false)
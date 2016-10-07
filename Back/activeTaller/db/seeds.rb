# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p1 = Post.create(content: 'Primer post')
p2 = Post.create(content: 'Ola ke hace aqui en Softtek')
p3 = Post.create(content: 'Chocando mi auto')
p4 = Post.create(content: 'Aqui atrapando un pokemon')
p5 = Post.create(content: 'Gud morning a todos menos a ti')
p6 = Post.create(content: 'Sobres ya quedo esta madre')


c1 = Comentario.create(cita: 'A no manches', post_id: p1.id)
c2 = Comentario.create(cita: 'Aburrido', post_id: p1.id)
c3 = Comentario.create(cita: 'Bienvenido', post_id: p1.id)
c4 = Comentario.create(cita: 'Yo tambien trabajo ahi', post_id: p2.id)
c5 = Comentario.create(cita: 'En buena empresa', post_id: p2.id)
c6 = Comentario.create(cita: 'programando', post_id: p2.id)
c7 = Comentario.create(cita: 'necesitas algo', post_id: p3.id)
c8 = Comentario.create(cita: 'jajaj que wey', post_id: p3.id)
c9 = Comentario.create(cita: 'Pika Pika', post_id: p4.id)
c10 = Comentario.create(cita: '400 de PC azuuuu', post_id: p4.id)
c11 = Comentario.create(cita: 'menso buen dia', post_id: p5.id)
c12 = Comentario.create(cita: '=D', post_id: p5.id)
c13 = Comentario.create(cita: 'Chido', post_id: p6.id)
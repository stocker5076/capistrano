# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c = Category.create(name: "Teléfono")
Product.create(name: "Galaxy 6", stock: 10, category: c)
Product.create(name: "Galaxy 5", stock: 5, category: c)
Product.create(name: "Iphone 6", stock: 10, category: c)
c = Category.create(name: "Notebooks")
Product.create(name: "Macbook Pro", stock: 20, category: c)

c = Category.create(name: "Tablets")
Product.create(name: "Ipad 2", stock: 1, category: c)
Product.create(name: "Lenovo Y", stock: 3, category: c)
Product.create(name: "HP tablet", stock: 7, category: c)
c = Category.create(name: "SmartWatch")
Product.create(name: "Huawei", stock: 20, category: c)
Product.create(name: "Apple Watch", stock: 17, category: c)
Product.create(name: "Tom Tom", stock: 4, category: c)

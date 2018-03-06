# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create(name: "oil", category: "medium")
Tag.create(name: "mixed-media", category: "medium")
Tag.create(name: "acrylic", category: "medium")
Tag.create(name: "charcoal", category: "medium")
Tag.create(name: "digital", category: "medium")

Tag.create(name: "impressionism", category: "style")
Tag.create(name: "cubism", category: "style")
Tag.create(name: "surrealism", category: "style")
Tag.create(name: "realism", category: "style")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cat = Cat.new(name: "Sprite", breed: "American Shorthair", age: 6, image_url: "add later")
cat.save
cat = Cat.new(name: "Freya", breed: "Calico", age: 5, image_url: "floofy")
cat.save
cat = Cat.new(name: "Nebular", breed: "American Shorthair", age: 6, image_url: "puffball")
cat.save
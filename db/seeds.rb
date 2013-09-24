# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
book = Book.create(title: "rayuela", author: "cortazar")
book1 = Book.create(title: "harry potter", author: "jk rowling")
book3= Book.create(title: "unbearable", author: "milan kundera")
book2 = Book.create(title: "cronopios y famas", author: "cortazar")

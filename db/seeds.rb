# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all # permet de faire une boucle de supprimer/création
user1 = User.new(email: "toto@gmail.com", password: "blabla")
user1.save


robot1 = Robot.new(name: "Sacha", image: "https://nypost.com/wp-content/uploads/sites/2/2021/12/Ameca_02-1.jpg?quality=90&strip=all", utility: "travaux", description: "Il vous aidera dans vos travaux de la maison")
robot1.user = user1
robot1.save

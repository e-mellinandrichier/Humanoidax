# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Robot.destroy_all
user1 = User.create(email: "email@gmail.com", password: "motdepasse")
  Robot.create( name: "Lil Miquela", image: "../../../assets/images/lil_miquela_cover_8342.webp",utility: "influenceuse", description: "Lil Miquela va vous faire des posts insta et augmenter vos followers !", user: user1)

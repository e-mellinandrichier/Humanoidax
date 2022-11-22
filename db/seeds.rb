require "open-uri"

Robot.destroy_all
User.destroy_all
user1 = User.create!(email: "email@gmail.com", password: "motdepasse")

file = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669115409/wsecjwkh0uz0uf2dxcxe.jpg")

robot1 = Robot.new(name: "Lil Miquela", utility: "influenceuse", description: "Lil Miquela va vous faire des posts insta et augmenter vos followers !")
robot1.user = user1
robot1.photo.attach(io: file, filename: "lilmiquela.jpg", content_type: "image/jpg")
robot1.save

robot2 = Robot.new(name: "Inès", utility: "front-end dev", description: "Va vous faire les plus beaux Figma du monde")
robot2.user = user1
robot2.save

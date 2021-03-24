# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Post.destroy_all
User.destroy_all
PostCategory.destroy_all
Comment.destroy_all

cat1 = Category.create(name: "cats")
cat2 = Category.create(name: "dogs")
cat3 = Category.create(name: "birds")
cat4 = Category.create(name: "fish")

pos1 = Post.create(title: "how not to", content:"blah de da")
pos2 = Post.create(title: "chocky milky", content:"blur de der")
pos3 = Post.create(title: "das an oof", content:"bluma la ma da")
pos4 = Post.create(title: "oofty doof", content:"reta tata kaaa")

usr1 = User.create(username: "nakidashisoma", email:"soma@mail.com")
usr2 = User.create(username: "bossysaucy", email:"bossemsauce@mail.com")
usr3 = User.create(username: "smolfri", email:"smollestfri@mail.com")
usr4 = User.create(username: "spicysanchez", email:"csanchez@mail.com")

poca1 = PostCategory.create(post: pos1, category: cat1)
poca2 = PostCategory.create(post: pos2, category: cat2)
poca3 = PostCategory.create(post: pos3, category: cat1)
poca4 = PostCategory.create(post: pos4, category: cat4)
poca5 = PostCategory.create(post: pos1, category: cat2)
poca6 = PostCategory.create(post: pos2, category: cat1)
poca7 = PostCategory.create(post: pos3, category: cat3)
poca8 = PostCategory.create(post: pos4, category: cat1)

com1 = Comment.create(content:"oof" , user: usr1 , post: pos1)
com1 = Comment.create(content:"big oof" , user: usr1 , post: pos2)
com1 = Comment.create(content:"lil oof" , user: usr4 , post: pos1)
com1 = Comment.create(content:"medium oof" , user: usr3 , post: pos3)
com1 = Comment.create(content:"oof oof" , user: usr2 , post: pos4)
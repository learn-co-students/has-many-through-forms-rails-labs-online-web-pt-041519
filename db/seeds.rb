# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(username: "Poptart", email: "poptart23@yahoo.com")
user2 = User.create(username: "CherryTree", email: "cherrytree76@live.com")
user3 = User.create(username: "HyperEx", email: "hyperex35@hotmail.com")
user4 = User.create(username: "iBuyPower", email: "ibuypower@powerhouse.com")

post1 = Post.create(title: "I love puppies", content: "Puppies are the best thing in the whole wide world!!!!!")
post2 = Post.create(title: "The world is ending", content: "OH NO!!!! WHAT ARE WE GONNA DO!! THE WORLD IS ENDIIIIIINNNNNNGGGGGG!!!!!!...          BOOM!!!!")
post3 = Post.create(title: "Taylor Swift just released a new album", content: "Taylor Swift is the best artist ever!!! I have, like, all of her cds and records! And I've, like, gone to, like, all of her concerts! OMG!! I just love her!")
post4 = Post.create(title: "Super boring post", content: "Super boring content")

comment1 = Comment.create(content: "No it isn't loser, get a life!", user_id: 1, post_id: 2)
comment2 = Comment.create(content: "Puppies are the for sure the best", user_id: 2, post_id: 1)
comment3 = Comment.create(content: "you were right", user_id: 3, post_id: 4)
comment4 = Comment.create(content: "what is it called", user_id: 4, post_id: 3)
comment5 = Comment.create(content: "I cant wait to listen to it on repeat", user_id: 4, post_id: 3)
comment6 = Comment.create(content: "It probably sucks, just like all her other music", user_id: 3, post_id: 3)
comment7 = Comment.create(content: "Yep", user_id: 2, post_id: 4)
comment8 = Comment.create(content: "I am more of a cat person", user_id: 1, post_id: 1)
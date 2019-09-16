# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@category = Category.create(name: "Cool")
@post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
@post.categories << @category
@user = User.create(username: 'RealBigFish')
@comment1 = Comment.create(content: "This was great!", user: @user, post: @post)
@comment2 = Comment.create(content: "And another thing, how come there aren't any vegetabls at the movie theater...", user: @user, post: @post)


@post2 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
@user2 = User.create(username: 'CoolGuy5')
@comment3 = @post2.comments.build(content: "Great Post!", user: @user2)
@post2.save
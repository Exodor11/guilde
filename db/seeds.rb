puts "Destroying previous stuff"

PostTag.destroy_all
UserTag.destroy_all
PostSaved.destroy_all
PostUpvoted.destroy_all
Contact.destroy_all
Post.destroy_all
Tag.destroy_all
User.destroy_all

puts "Old stuff destroyed successfully"
puts "Adding new stuff"

#TAG SEEDS
tag1 = Tag.create(name:"💰 business", category:"business")
tag2 = Tag.create(name:"📡 technology", category:"technology")
tag3 = Tag.create(name:"📈 finance", category:"finance")
tag4 = Tag.create(name:"🤹 entrepreneurship", category:"entrepreneurship")
tag5 = Tag.create(name:"🧬 sciences", category:"sciences")
tag6 = Tag.create(name:"🎭 psychology", category:"psychology")
tag7 = Tag.create(name:"👓 sociology", category:"sociology")
tag8 = Tag.create(name:"🧞‍♂️ philosophy", category:"philosophy")
tag9 = Tag.create(name:"⚖️ politics", category:"politics")
tag10 = Tag.create(name:"🥦 health", category:"health")


#USER SEEDS + AVATAR
#romain = User.new(email: "romain@guilde.com", first_name: 'Romain', last_name: 'Losey', bio: 'Busy building a life I do not need to escape from', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/romain-losey/' , password: '12345678', password_confirmation: '12345678')
#romain.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624455076/taxkkidiqfgsoecqktb3.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
#romain.save!

marc = User.new(email: "marc@guilde.com", first_name: 'Marc', last_name: "L'Eplattenier", bio: 'Busy building a life I do not need to escape from', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/mleplattenier/', password: '12345678', password_confirmation: '12345678')
marc.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624023909/wfliysfgym33qlzi0dsd.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
marc.save!

nico = User.new(email: "nico@guilde.com", first_name: 'Nicholas', last_name: 'Martin', bio: 'You miss 100% of the shots you don’t take', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nicholas-martin-777471203/', password: '12345678', password_confirmation: '12345678')
nico.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624437133/tppabzxei90i8j8joyps.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nico.save!

nathan = User.new(email: "nathan@guilde.com", first_name: 'Nathan', last_name: 'Cohen', bio: 'Exploring space with my amazing coding buddies', contact_text: 'Please reach out to me on LinkedIn: https://www.linkedin.com/in/nathan-cohen-b7aa651a1/', password: '12345678', password_confirmation: '12345678')
nathan.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1624987859/tr4zygrx5akfawfoh4vj.jpg'), filename: 'profile.jpg', content_type: 'image/jpg')
nathan.save!



#USER_TAGS SEEDS
#romain.tags << [tag1, tag2]
#romain.save

marc.tags << [tag2, tag8]
marc.save

nico.tags << [tag4, tag9]
nico.save

nathan.tags << [tag2, tag4]
nathan.save

#USER_CONTACTS SEEDS
# FOLLOWER = FOLLOWED (=> User.followers = list of users who follow User)
# FOLLOWING = FOLLOWING (=> User.followings = list of users who are followed by User)
#contact1 = Contact.create(follower: romain, following: marc)
contact2 = Contact.create(follower: nathan, following: nico)
contact3 = Contact.create(follower: nico, following: nathan)
contact4 = Contact.create(follower: nathan, following: marc)

#POST SEEDS
business1 = Post.new(title: "Tim Cook’s decade at Apple makes him the most successful successor CEO ever",
		description: "Dedication, attention to detail and an instinct to do the opposite of what Steve Jobs might have done earn him that accolade",
		text_action_text: "THE TECHNOLOGY industry is littered with managers who have tried and failed to emulate successful founders. Think of <em>Steve Ballmer</em>, who succeeded Bill Gates at Microsoft, and Kevin Rollins, who took over from Michael Dell at Dell Technologies, who returned a few years later. Tim Cook heads the list of exceptions. Since he took the helm of Apple from Steve Jobs ten years ago, the firm’s market capitalisation has increased by more than $2trn. <strong>NO CHIEF EXECUTIVE</strong>&nbsp;in history has created as much total shareholder value. Mr Cook’s numbers beat the value generated by Jeff Bezos, who retired as Amazon’s chief executive in July, over his 24 years in charge. They also surpass the achievement of Warren Buffett, who has been running Berkshire Hathaway for nearly 45 years. During his second almost 14-year stint at Apple, Jobs added only $343.6bn to the firm’s market valuation, or $24.7bn a year.",
		user: nico)
business1.photo.attach(io: URI.open('https://www.mactrast.com/wp-content/uploads/2019/03/D2AE21F6-CE02-4E42-B5A2-5F49901F5FCA-800x457.jpeg'), filename: 'business1.jpg' , content_type: 'image/jpg')
business1.save!

philosophy1 = Post.new(title: "You are Not Lazy or Undisciplined. You Have Internal Resistance.",
		description: "Why you can’t just do it, and what to do instead",
		text_action_text: "",
		user: nathan)
philosophy1.photo.attach(io: URI.open('https://i.imgflip.com/2qtvhx.jpg'), filename: 'philosophy1.jpg' , content_type: 'image/jpg')
philosophy1.save!

health1 = Post.new(title: "I cut my body fat percentage almost in half after starting a high-protein diet. Here’s what I eat.",
		description: "My body fat from 30% to 17% by eating a high-protein diet comprised of chicken, turkey, and Greek yogurt.",
		text_action_text: "",
		user: nico)
health1.photo.attach(io: URI.open('https://nexter.org/wp-content/uploads/2019/03/diet-weight-loss-memes-pic1.jpg'), filename: 'health1.jpg' , content_type: 'image/jpg')
health1.save!



#POST TAGS SEEDS
business1.tags << [tag6, tag9]
business1.save

philosophy1.tags << [tag1, tag2]
philosophy1.save

health1.tags << [tag1, tag10]
health1.save

puts "New stuff added successfully"

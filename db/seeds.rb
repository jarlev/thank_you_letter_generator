# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
greeting_list = [
	["Dear", "Dear", nil],
	["To", "To", nil],
	["To Whom It May Concern", "To Whom It May Concern", nil],
	["Good morning", "Good morning", nil],
	["Good afternoon", "Good afternoon", nil],
	["Good evening", "Good evening", nil],
	["Hello", "Hello", nil],
	["Hi", "Hi", nil]
]

greeting_list.each do |name, content, user_id|
	Greeting.create( name: name, content: content, user_id: user_id )
end

body_list = [
	["Birthday1", "Thank you so much for the birthday gift! I really appreciate you thinking of me. It was great to see you!", nil],
	["generic gift", "Thanks for the wonderful gift, that was very thoughtful of you! I would love to catch up with you soon and see how things are going for you! What's your schedule look like in the next week or two?", nil],
	["", "To Whom It May Concern", nil],
	["Graduation", "Thank you so much for the wonderful graduation gift. That was so nice of you to think of me on my special day. I hope all is going well for you! Thanks again.", nil],
	["Post job interview1", "Thank you very much for taking the time to sit down with me. I really enjoyed talking to you and learning more about the position. If there are any additional questions I can answer to help with the selection process, please do not hesitate to contact me.", nil],
	["Thanks", "Just wanted to say thanks for all that you do for me. I'm so grateful to have you in my life.", nil]
]

body_list.each do |name, content, user_id|
	Body.create( name: name, content: content, user_id: user_id )
end

closing_list = [
	["From", "From", nil],
	["Best", "Best", nil],
	["All the best", "All the best", nil],
	["Best regards", "Best regards", nil],
	["Take care", "Take care,", nil],
	["Cheers", "Cheers", nil],
	["Sincerely", "Sincerely", nil],
	["Respectfully", "Respectfully", nil],
	["Love", "Love", nil],
	["Empty", "", nil],
	["Thanks again", "Thanks again", nil]
]

closing_list.each do |name, content, user_id|
	Closing.create( name: name, content: content, user_id: user_id )
end
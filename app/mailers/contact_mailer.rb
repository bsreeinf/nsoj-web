class ContactMailer < ActionMailer::Base
	def contact_created(name,email,city,phone,subject,university,message)
		@name = name
		@email = email
		@city = city
		@phone = phone
		@subject = subject
		@university = university
		@message = message
		mail(
				to: "contact@nsoj.in,paul.abhishek@nsoj.in,alex@nsoj.in",
				from: ENV['INFO_EMAIL'],
				subject: "New Contact"
			)
	end
end 
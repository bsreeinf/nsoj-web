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
				to: ENV["TO_EMAILS"],
				from: 'National School of Journalism <info@nsoj.in>',
				subject: "New Contact"
			)
	end
end 
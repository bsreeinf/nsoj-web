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
				to: Figaro.env.em_contact_cc_group,
				from: "National School of Journalism <#{Figaro.env.em_admission_ack_sender_alias}>", 
				subject: "New enquiry from website"
			)
	end
end 
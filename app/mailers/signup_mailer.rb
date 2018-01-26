class SignupMailer < ActionMailer::Base
	def signup_created(name,email,phone,city)
		@name = name
		@email = email
		@phone = phone
		@city = city
		
		mail(
			to: Figaro.env.em_contact_cc_group,
			from: "National School of Journalism <#{Figaro.env.em_contact_ack_sender_alias}>", 
			subject: "Welcome to NSoJ"
		)
	end
end 
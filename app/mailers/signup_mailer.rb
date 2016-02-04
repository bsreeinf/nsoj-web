class SignupMailer < ActionMailer::Base
	def signup_created(name,email,phone,city)
		@name = name
		@email = email
		@phone = phone
		@city = city
		
		mail(
				to: "harmonyinceltic@gmail.com,allendavisdev29@gmail.com",
				from: 'National School of Journalism <info@nsoj.in>',
				subject: "New Signup"
			)
	end
end 
class SignupMailer < ActionMailer::Base
	def signup_created(name,email,phone,city)
		@name = name
		@email = email
		@phone = phone
		@city = city
		
		mail(
				to: ENV["TO_EMAILS"],
				from: 'National School of Journalism <info@nsoj.in>',
				subject: "New Signup"
			)
	end
end 
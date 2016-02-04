class AdmissionContactMailer < ActionMailer::Base
	def admission_contact_created(name,email,phone,college,city)
		@name = name
		@email = email		
		@phone = phone
		@college = college
		@city = city
		
		mail(
				to: ENV['INFO_EMAIL'],
				from: 'National School of Journalism <info@nsoj.in>',
				subject: "New Contact",
				
			)
	end
end 
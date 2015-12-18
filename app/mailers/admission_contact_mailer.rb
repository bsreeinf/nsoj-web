class AdmissionContactMailer < ActionMailer::Base
	def admission_contact_created(name,email,phone,college,city)
		@name = name
		@email = email		
		@phone = phone
		@college = college
		@city = city
		
		mail(
				to: "freelancetest@gmail.com",
				from: "admission_contact@nsoj.com",
				subject: "New Contact",
				
			)
	end
end 
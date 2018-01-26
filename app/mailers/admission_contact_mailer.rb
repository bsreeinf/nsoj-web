class AdmissionContactMailer < ActionMailer::Base
	def admission_contact_created(name,email,phone,college,city)
		@name = name
		@email = email		
		@phone = phone
		@college = college
		@city = city
		
		mail(
			to: Figaro.env.to_emails,
			from: "Admissions - National School of Journalism <#{Figaro.env.em_admission_ack_sender_alias}>", 
			subject: "New Admission Enquiry",
				
			)
	end
end 
class ApplicationFormMailer < ActionMailer::Base
	def application_form_created(f_name, l_name, email, form_id)
		@f_name  = f_name
		@l_name  = l_name
		@applicant_email   = email		
		@form_id = form_id
		
		mail(
			to: @applicant_email, 
			from: "Admissions - National School of Journalism <#{Figaro.env.em_admission_ack_sender_alias}>", 
			subject: "New Application form"
		)
	end

	def application_form_notification_created(f_name, l_name, email, form_id,  notif_to_emails)
		@f_name  = f_name
		@l_name  = l_name
		@applicant_email   = email		
		@form_id = form_id
		emails = 
		
		mail(
			to: emails, 
			from: "Admissions - National School of Journalism <#{Figaro.env.em_admission_ack_sender_alias}>", 
			subject: "New Application form"
		)
	end

end 
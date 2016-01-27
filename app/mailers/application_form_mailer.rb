class ApplicationFormMailer < ActionMailer::Base
	def application_form_created(f_name,l_name,email,form_id)
		@f_name  = f_name
		@l_name  = l_name
		@email   = email		
		@form_id = form_id
		
		mail(
				to: @email,
				from: ENV['INFO_EMAIL'],
				subject: "New Application form",
				
			)
	end

	def application_form_notification_created(f_name,l_name,email,form_id)
		@f_name  = f_name
		@l_name  = l_name
		@email   = email		
		@form_id = form_id
		
		mail(
				to: ENV['INFO_EMAIL'],
				from: ENV['INFO_EMAIL'],
				subject: "New Application form",
				
			)
	end

end 
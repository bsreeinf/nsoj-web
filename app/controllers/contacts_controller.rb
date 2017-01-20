class ContactsController < ApplicationController

	def create
		

		@contact = Contact.new(contact_params)
		  if @contact.email != @contact.message
		
		      if @contact.save

		        ContactMailer.contact_created(
		        	@contact.name,
		        	@contact.email,
		        	@contact.city,
		        	@contact.phone,
		        	@contact.contact_subject.title,
		        	@contact.university,
		        	@contact.message
		        ).deliver
		        redirect_to root_path, notice: 'Thanks for contacting us. We will get back to you shortly.' 
		        
		      # else
		      #   redirect_to root_path, notice: 'Something went wrong. Please try contacting us later'
		    
		      # end
		  else 
		  	else
		        redirect_to root_path, notice: 'Something went wrong. Please try contacting us later'
		end



	end

private

	
	# Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :city, :phone, :university, :contact_subject_id, :message)
    end

end
class AdmissionContactsController < ApplicationController

	def create
		

		@admission_contact = AdmissionContact.new(admission_contact_params)

		
	      if @admission_contact.save

	        AdmissionContactMailer.admission_contact_created(@admission_contact.name,@admission_contact.email,@admission_contact.phone,@admission_contact.college,@admission_contact.city).deliver
	        redirect_to root_path, notice: 'Thanks for contacting us. We will get back to you shortly.' 
	        
	      else
	        redirect_to root_path, notice: 'Something went wrong. Please try contacting us later'
	    
	      end
	



	end

private

	
	# Never trust parameters from the scary internet, only allow the white list through.
    def admission_contact_params
      params.require(:admission_contact).permit(:name, :email,  :phone, :college, :city)
    end

end
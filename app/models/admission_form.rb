class AdmissionForm < ActiveRecord::Base
	include Tokenable
	
	belongs_to :user
end

ActiveAdmin.register NsojPost do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :link, :document
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "Posts Uploads" do	
			
	    	f.input :document, :required => true, :as => :file 	    
		end		
		
		# for custom actions
		f.actions do 
	       f.action :submit, :as => :button ,:label => 'Create Item'
	       f.action :cancel, :as => :link, :label => 'Cancel',:wrapper_html => { :class=>"cancel" }
	    end 
	end


end

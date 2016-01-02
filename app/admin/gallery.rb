ActiveAdmin.register Gallery do
	permit_params :image , :title
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	form :html => { :enctype => "multipart/form-data"} do |f|

		f.inputs "Image Uploads" do	
			f.input :title
	    	f.input :image, :required => true, :as => :file 	    
		end		
		
		# for custom actions
		f.actions do 
	       f.action :submit, :as => :button ,:label => 'Create Item'
	       f.action :cancel, :as => :link, :label => 'Cancel',:wrapper_html => { :class=>"cancel" }
	    end 
	end

	show :title => "" do |gallery|
		panel 'Image Details' do
			attributes_table_for gallery  do
				row :title
				row :image do
				  image_tag(gallery.image.url(:thumb))
				end
				
			end
		end	
	  
	 end

	index :title => "Gallery" do
       column :title
	    column :image do |post|
	    	a :class => "admin_image_popup", :href => post.image.url(:large) do
				image_tag(post.image.url(:thumb))
	        end	     
	    end    
	  actions
	end

	# for new, edit, and delete you have to do it differently
	controller do
		def edit
		  @page_title = "Edit image details"
		end
	end

	config.clear_action_items!

	action_item :only => :index do
	    link_to "New Item" , "/admin/galleries/new" 
	end

	action_item :only => :show do
	    link_to "back" , admin_galleries_path
	end
	

end

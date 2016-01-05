ActiveAdmin.register EventDatum do
	permit_params :image , :tag, :event_id
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
			f.input :event_id, as: :select, collection: Event.all.uniq
			f.input :tag
	    	f.input :image, :required => true, :as => :file 	    
		end		
		
		# for custom actions
		f.actions do 
	       f.action :submit, :as => :button ,:label => 'Create Item'
	       f.action :cancel, :as => :link, :label => 'Cancel',:wrapper_html => { :class=>"cancel" }
	    end 
	end

	show :tag => "" do |event_datum|
		panel 'Image Details' do
			attributes_table_for event_datum  do
				row :event_id
				row :tag
				row :image do
				  image_tag(event_datum.image.url(:thumb))
				end
				
			end
		end	
	  
	 end

	index :tag => "Gallery" do
		column :event_id
       column :tag
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
	    link_to "New Item" , "/admin/event_data/new" 
	end

	action_item :only => :show do
	    link_to "back" , admin_event_data_path
	    link_to "New Item" , "/admin/event_data/new" 
	end


end

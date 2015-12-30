ActiveAdmin.register Gallery do
	permit_params :image
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
			
		
	    	f.input :image,  hint: f.gallery.image? ? image_tag(f.gallery.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image") 
	    
		end
		
		f.actions 
	end

	index do
	    column :image_link
	    column "Image" do |gallery|
	      link_to(image_tag(gallery.image.url(:thumb), :height => '100'), admin_gallery_path(gallery))
	 
	    end	    
	  actions
	end

end
